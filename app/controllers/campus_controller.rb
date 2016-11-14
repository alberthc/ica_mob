class CampusController < ApplicationController

  def home
    campus_url_key = params[:campus_url_key]
    campus = Campus.find_by_url_key(campus_url_key)
    
    case campus_url_key
      when Campus::USC
        campus_constructor(campus, USC_EMAIL, USC_API_KEY, DEFAULT_TZ)
      when Campus::UCLA
        campus_constructor(campus, UCLA_EMAIL, UCLA_API_KEY, DEFAULT_TZ)
      when Campus::UCI
        campus_constructor(campus, UCI_EMAIL, UCI_API_KEY, DEFAULT_TZ)
      when Campus::CAL
        campus_constructor(campus, CAL_GCAL_ID, CAL_API_KEY, DEFAULT_TZ)
      when Campus::RUTGERS
        campus_constructor(campus, RUTGERS_GCAL_ID, RUTGERS_API_KEY, NEW_YORK_TZ)
      else
        raise ActionController::RoutingError.new('Not Found')
    end
  end

  def leaders
    campus_url_key = params[:campus_url_key]
    if (!validate_campus_url_key(campus_url_key))
      raise ActionController::RoutingError.new('Not Found')
    end

    campus = Campus.find_by_url_key(campus_url_key)
    @campus_leaders = create_leaders_lists(campus.campus_leaders)
    @student_leaders = create_leaders_lists(campus.student_leaders)

    @leaders_page_title = campus.school_name + " Leaders"
    @campus_name = campus.school_name
    @main_photo_id = campus.url_key + "-leaders"
  end

  def small_groups
    campus_url_key = params[:campus_url_key]
    if (!validate_campus_url_key(campus_url_key))
      raise ActionController::RoutingError.new('Not Found')
    end

    campus = Campus.find_by_url_key(campus_url_key)
    get_small_groups_info(campus)

    @small_groups_page_title = campus.school_name + " Small Groups"
    @num_small_group_display_columns = 2

    if !@campus_leaders.nil?
      puts 'LISTING CAMPUS LEADERS'
      for leader in @campus_leaders
        puts 'name = ' + leader.name + ', bio = ' + leader.bio
      end
    end
  end
 
  def campus_constructor(campus, gcal_id, api_key, tz)
    @campus_name = campus.school_name
    @campus_org_name = campus.org_name
    @campus_main_pic_id = campus.url_key + '-main'
    @campus_group_small_pic = campus.url_key + '-group-sml.jpg'
    @campus_group_pic = campus.url_key + '-group.jpg'
    @keywords = campus.keywords
    @description = campus.description
    @rally_name = campus.rally_name
    @rally_datetime = campus.rally_datetime
    @rally_location = campus.rally_location
    @church_name = campus.church_name
    @church_datetime = campus.church_datetime
    @church_location = campus.church_location
    @announcements_bg_color1_class = campus.announcements_bg_color1_class
    @announcements_bg_color2_class = campus.announcements_bg_color2_class
    @fb_campus_link = campus.fb_campus_link
    @fb_link_class = campus.fb_link_class
    @small_groups_path = request.original_url + '/small-groups'
    @small_groups_pic_id = 'small-groups'
    @leaders_path = request.original_url + '/leaders'
    @leaders_pic_id = campus.url_key + '-leaders-icon'
    @gcal_path = campus.gcal_path

    retrieve_gcal_events(gcal_id, api_key, tz)
  end

  private

    def retrieve_gcal_events(gcalid, api_key, timeZone)
      google_api_client = Google::APIClient.new
      google_api_calendar = google_api_client.discovered_api('calendar', 'v3')
      google_api_client.authorization = nil

      result = google_api_client.execute(api_method: google_api_calendar.events.list,
                                         parameters: {calendarId: gcalid,
                                                      singleEvents: true,
                                                      maxResults: 20,
                                                      orderBy: 'startTime',
                                                      timeMin: Util.get_current_time(timeZone),
                                                      timeZone: timeZone,
                                                      key: api_key})
      
      if !result.data.nil?
        entries = result.data.items
      end

      # Structure containing the feed parsed for display
      @parsed_entries = Array.new
      numEntriesChecked = 0

      if !entries.nil?
        entries.each do |entry|
          puts 'entry = ' + entry.summary
          numEntriesChecked += 1
          if numEntriesChecked > MAX_NUM_ANNOUNCEMENTS_TO_CHECK
            break
          end

          # skip entry if description contains SKIP_ENTRY_TEXT
          content = entry.description
          if content == SKIP_ENTRY_TEXT
            next
          end

          # Some events only have date
          dateTime = nil
          date = nil
          
          begin
            dateTime = entry.start.dateTime
          rescue
            date = Date.parse(entry.start.date)
          end

          title = entry.summary

          if !dateTime.nil?
            date = dateTime.strftime('%A %-m/%-d')
            time = dateTime.in_time_zone(timeZone).strftime('%-I:%M %p')
          else
            date = date.strftime('%A %-m/%-d')
            time = 'TBD'
          end

          location = entry.location

          parsed_entry = {title: title,
                          date: date,
                          time: time,
                          location: location}

          # check if parsed_entry is part of a recurring event that is already on the list and don't show
          if exists(@parsed_entries, parsed_entry)
            next
          end

          @parsed_entries.push(parsed_entry)

          if @parsed_entries.size == MAX_NUM_ANNOUNCEMENTS_TO_DISPLAY
            break
          end
        end
      end
    end

    # Check if new_entry already exists in list of parsed entries
    def exists(entries, new_entry)
      if entries.empty?
        return false
      else
        entries.each do |entry|
          if entry[:title] == new_entry[:title] &&
            entry[:location] == new_entry[:location] &&
            entry[:time] == new_entry[:time]
            return true
          end
        end
      end
      return false
    end

    def create_leaders_lists(db_leaders)
      leaders = Hash.new
      leaders["all"] = db_leaders.where(is_active: true).order(:position)
      leaders["all"] ||= Array.new
      leaders_columns = CampusLeader.get_campus_leaders_columns(leaders["all"])
      leaders["column1"] = leaders_columns[:column_1]
      leaders["column2"] = leaders_columns[:column_2]
      return leaders
    end

    def get_small_groups_info(campus)
      @small_groups = campus.campus_small_groups.order(:position)
      if @small_groups.nil?
        @small_groups = Array.new
      end
    end

    def validate_campus_url_key(campus_url_key)
      if Campus::VALID_CAMPUSES.include?(campus_url_key)
        return true
      else
        return false
      end
    end

end


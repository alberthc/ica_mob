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

    def retrieve_gcal_events(gcalid, api_key, time_zone)
      calendar = GoogleCalendarService.new api_key, gcalid

      params = { 'max_results': 20,
                 'single_events': true,
                 'order_by': 'startTime',
                 'time_min': Util.get_current_time(time_zone),
                 'time_zone': time_zone }

      result = calendar.get_events(params)
      return if result.nil?
      
      @entries = Array.new
      result.items.each_index do |i|
        break if i >= MAX_ANNOUNCEMENTS_TO_CHECK || @entries.size >= MAX_ANNOUNCEMENTS_TO_DISPLAY
        display_item = get_display_item(result.items[i], time_zone)
        @entries.push display_item if display_item
      end
    end

    def get_display_item(item, time_zone)
      return if item.description == SKIP_ENTRY_TEXT
      puts 'item = ' + item.summary

      # Some events only have date
      date_time = nil
      date = nil
      
      begin
        date_time = item.start.date_time
      rescue
        date = Date.parse(item.start.date)
      end

      if !date_time.nil?
        date = date_time.strftime('%A %-m/%-d')
        time = date_time.in_time_zone(time_zone).strftime('%-I:%M %p')
      elsif !date.nil?
        date = date.strftime('%A %-m/%-d')
        time = 'TBD'
      else
        date = 'TBD'
        time = 'TBD'
      end

      title = item.summary
      location = 'TBD'
      location = item.location if !item.location.nil?
      display_item = {title: title,
                      date: date,
                      time: time,
                      location: location}

      # check if display_item is part of a recurring event that is already on the list and don't show
      return if exists(@entries, display_item)

      display_item
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


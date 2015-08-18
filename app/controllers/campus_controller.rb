class CampusController < ApplicationController
=begin
  @campus_name = 'none'
  @campus_org_name 'ICA'
  @keywords = 'ICA, In Christ Alone, Campus Christian fellowship'
  @description = 'Campus Christian fellowship'
  @rally_name = 'Large Group Rally'
  @rally_datetime = 'TBD'
  @rally_location = 'TBD'
  @church_name = 'Church'
  @church_datetime = 'Sunday Service begins at 9:45am'
  @church_location = 'SGM 101'
  @fb_campus_link = ''
  @small_group_path = ''
  @small_group_pic_id = ''
  @leaders_path = ''
  @leaders_pic_id = ''
  @gcal_path = ''
=end
 
  def usc
    @campus_name = 'USC'
    @campus_org_name = 'USC ICA'
    @campus_main_pic_id = 'USC-main'
    @campus_group_small_pic = 'usc-group-sml.jpg'
    @campus_group_pic = 'usc-group.jpg'
    @keywords = 'USC, student organization, campus fellowship, fellowship, discipleship, evangelism, witnessing, navigators, missions, navs, ministry'
    @description = 'USC In Christ Alone (ICA) is a recognized student organization at USC that welcomes both believers and non-believers. We have a strong emphasis on discipleship and seeking and saving the lost. Our desire is to know Christ and make Christ known on our campus and around the world. We hold weekly small group Bible studies and large group meetings along with other fun activities.'
    @rally_name = 'Large Group Rally'
    @rally_datetime = 'Thursday, 6:30pm'
    @rally_location = 'Location: VKC 156'
    @church_name = 'Church'
    @church_datetime = 'Sunday Service begins at 9:45am'
    @church_location = 'SGM 101'
    @announcements_bg_color1_class = 'bg-gold'
    @announcements_bg_color2_class = 'bg-red'
    @fb_campus_link = 'https://www.facebook.com/groups/5748715849/?ref=br_tf'
    @small_groups_path = usc_small_groups_path
    @small_groups_pic_id = 'small-groups'
    @leaders_path = usc_leaders_path
    @leaders_pic_id = 'usc-statue'
    @gcal_path = 'https://www.google.com/calendar/embed?src=uscinchristalone%40gmail.com&ctz=America/Los_Angeles'

    retrieve_events(USC_EMAIL, USC_API_KEY)
  end

  def usc_smallgroups
  end

  def usc_leaders
  end

  def ucla
    @campus_name = 'UCLA'
    @campus_org_name = 'Bruin ICA'
    @campus_main_pic_id = 'UCLA-main'
    @campus_group_small_pic = 'ucla_group.jpg'
    @campus_group_pic = 'ucla_group.jpg'
    @keywords = 'UCLA, student organization, campus fellowship, fellowship, discipleship, evangelism, witnessing, navigators, missions, navs, ministry'
    @description = ''
    @rally_name = 'Large Group Rally'
    @rally_datetime = 'Wednesday, 6:30pm'
    @rally_location = 'Haines A44'
    @church_name = 'Church'
    @church_datetime = 'Pickup Time: 9:00am'
    @church_location = 'Pickup Location: De Neve Turnaround'
    @announcements_bg_color1_class = 'bg-gold'
    @announcements_bg_color2_class = 'bg-ucla-blue'
    @fb_campus_link = 'https://www.facebook.com/groups/5175699521/'
    @small_groups_path = ucla_small_groups_path
    @small_groups_pic_id = 'small-groups'
    @leaders_path = ucla_leaders_path
    @leaders_pic_id = 'ucla-statue'
    @gcal_path = 'https://www.google.com/calendar/embed?src=icabruins%40gmail.com&ctz=America/Los_Angeles'

    retrieve_events(UCLA_EMAIL, UCLA_API_KEY)
  end

  def ucla_smallgroups
  end

  def ucla_leaders
  end

  def uci
    @campus_name = 'UCI'
    @campus_org_name = 'Irvine ICA'
    @campus_main_pic_id = 'UCI-main'
    @campus_group_small_pic = 'uci-group.jpg'
    @campus_group_pic = 'uci-group.jpg'
    @keywords = 'UCI, student organization, campus fellowship, fellowship, discipleship, evangelism, witnessing, navigators, missions, navs, ministry'
    @description = ''
    @rally_name = 'Large Group Rally'
    @rally_datetime = 'Thursday, 6:30pm'
    @rally_location = 'Balboa Island B'
    @church_name = 'Church'
    @church_datetime = 'Pickup Time: 8:45am'
    @church_location = 'Pickup Location: Please Contact Driver'
    @announcements_bg_color1_class = 'bg-gold'
    @announcements_bg_color2_class = 'bg-ucla-blue'
    @fb_campus_link = 'https://www.facebook.com/groups/28628738058/'
    @small_groups_path = uci_small_groups_path
    @small_groups_pic_id = 'small-groups'
    @leaders_path = uci_leaders_path
    @leaders_pic_id = 'uci-statue'
    @gcal_path = 'https://www.google.com/calendar/embed?src=irvineica%40gmail.com&ctz=America/Los_Angeles'

    retrieve_events(UCI_EMAIL, UCI_API_KEY)
  end

  def uci_smallgroups
  end

  def uci_leaders
  end

  def cal
    redirect_to "http://www.lhecberkeley.org/in-christ-alone-collegiate-fellowship.html"
  end

  def retrieve_events(gmail, api_key)
    # google_api_client = GData::Client::DocList.new

    # calendar_feed_addr = 'https://www.googleapis.com/calendar/v3/calendars/uscinchristalone%40gmail.com/events?singleEvents=true&maxResults=30&orderBy=startTime&key=' + USC_API_KEY

=begin
    # Check if GData client successfully gets data from the calendar feed - DEPRECATE V2 API
    begin
      feed = client.get(calendar_feed_addr).to_xml
      feed = client.get(calendar_feed_addr)

      puts 'UscController#home: feed = ' + feed
    rescue
      puts 'UscController#home: error getting gdata client calendar feed, address=' + calendar_feed_addr
    end
=end

    google_api_client = Google::APIClient.new
    google_api_calendar = google_api_client.discovered_api('calendar', 'v3')
    google_api_client.authorization = nil

    result = google_api_client.execute(api_method: google_api_calendar.events.list,
                                       parameters: {calendarId: gmail,
                                                    singleEvents: true,
                                                    maxResults: 20,
                                                    orderBy: 'startTime',
                                                    timeMin: Util.get_current_time,
                                                    key: api_key})
    
    entries = result.data.items
#=begin
    entries.each do |e|
      print e.summary + "\n"
      puts e.summary + "\n"
    end
#=end

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

        #datetime = DateTime.parse(entry.elements['gd:when'].attribute('startTime').value)

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
          time = dateTime.strftime('%-I:%M %p')
        else
          date = date.strftime('%A %-m/%-d')
          time = 'TBD'
        end

        #location = entry.elements['gd:where'].attribute('valueString').value
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

  private

    # Check if newEntry already exists in list of parsed entries
    def exists(entries, newEntry)
      if entries.empty?
        return false
      else
        entries.each do |entry|
          if entry[:title] == newEntry[:title] &&
            entry[:location] == newEntry[:location] &&
            entry[:time] == newEntry[:time]
            return true
          end
        end
      end
      return false
    end

end


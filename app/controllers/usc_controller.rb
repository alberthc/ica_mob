class UscController < ApplicationController
  def home
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
                                       parameters: {calendarId: USC_EMAIL,
                                                    singleEvents: true,
                                                    maxResults: 20,
                                                    orderBy: 'startTime',
                                                    timeMin: Util.get_current_time,
                                                    timeZone: DEFAULT_TIME_ZONE,
                                                    key: USC_API_KEY})
    
    entries = result.data.items
=begin
    entries.each do |e|
      print e.summary + "\n"
      puts e.summary + "\n"
    end
=end

    # Structure containing the feed parsed for display
    @parsed_entries = Array.new
    numEntriesChecked = 0

    if !entries.nil?
      entries.each do |entry|
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

        dateTime = entry.start.dateTime

        title = entry.summary
        date = dateTime.strftime('%A %-m/%-d')
        time = dateTime.strftime('%-I:%M %p')
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

  def leaders
  end

  def smallgroups
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

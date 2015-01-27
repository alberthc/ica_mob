class UscController < ApplicationController
  def home
    client = GData::Client::DocList.new
    #calendar_feed_addr = 'http://www.google.com/calendar/feeds/uscinchristalone@gmail.com/public/full?orderby=starttime&sortorder=ascending&futureevents=true&singleevents=true'

    calendar_feed_addr = 'http://www.google.com/calendar/feeds/uscinchristalone@gmail.com/public/full?alt=json&max-results=15' + USC_API_KEY

    # Check if GData client successfully gets data from the calendar feed
    begin
      feed = client.get(calendar_feed_addr).to_xml
    rescue
      puts 'UscController#home: error getting gdata client calendar feed, address=' + calendar_feed_addr
    end

    # Structure containing the feed parsed for display
    @feed_parsed = Array.new
    numEntriesChecked = 0

    if !feed.nil?
      feed.elements.each('entry') do |entry|
        numEntriesChecked += 1
        if numEntriesChecked > MAX_NUM_ANNOUNCEMENTS_TO_CHECK
          break
        end

        # skip entry if description contains SKIP_ENTRY_TEXT
        content = entry.elements['content'].text
        if content == SKIP_ENTRY_TEXT
          next
        end

        datetime = DateTime.parse(entry.elements['gd:when'].attribute('startTime').value)

        title = entry.elements['title'].text
        date = datetime.strftime('%A %-m/%-d')
        time = datetime.strftime('%-I:%M %p')
        location = entry.elements['gd:where'].attribute('valueString').value

        parsed_entry = {title: title,
                        date: date,
                        time: time,
                        location: location}

        # check if parsed_entry is part of a recurring event that is already on the list and don't show
        if exists(@feed_parsed, parsed_entry)
          next
        end

        @feed_parsed.push(parsed_entry)

        if @feed_parsed.size == MAX_NUM_ANNOUNCEMENTS_TO_DISPLAY
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

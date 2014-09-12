class UscController < ApplicationController
  def home
    client = GData::Client::DocList.new
    feed = client.get('http://www.google.com/calendar/feeds/uscinchristalone@gmail.com/public/full?orderby=starttime&sortorder=ascending&futureevents=true&singleevents=true').to_xml
    
    # Structure containing the feed parsed for display
    @feed_parsed = Array.new
    numEntriesChecked = 0
    maxNumEntriesToCheck = 20
    maxNumEntriesToDisplay = 5

    feed.elements.each('entry') do |entry|
      numEntriesChecked += 1
      if numEntriesChecked > maxNumEntriesToCheck
        break
      end

      content = entry.elements['content'].text
      if content == "none"
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

      if @feed_parsed.size == maxNumEntriesToDisplay
        break
      end
    end
  end

  def smallgroups
  end

  private

    #Returns the full title on a per-page basis
    def exists(entries, newEntry)
      if entries.empty?
        return false
      else
        entries.each do |entry|
          if entry[:title] == newEntry[:title] && entry[:location] == newEntry[:location] && 
            entry[:time] == newEntry[:time]
            return true
          end
        end
      end
      return false
    end

end

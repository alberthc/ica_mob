class UscController < ApplicationController
  def home
    client = GData::Client::DocList.new
    feed = client.get('http://www.google.com/calendar/feeds/uscinchristalone@gmail.com/public/full?orderby=starttime&sortorder=ascending&futureevents=true&singleevents=true').to_xml
    
    # Structure containing the feed parsed for display
    @feed_parsed = Array.new

    feed.elements.each('entry') do |entry|
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
      @feed_parsed.push(parsed_entry)
      if @feed_parsed.size == 4
        break
      end
    end
  end

  def smallgroups
  end
end

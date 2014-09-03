class UscController < ApplicationController
  def home
    client = GData::Client::DocList.new
    feed = client.get('http://www.google.com/calendar/feeds/uscinchristalone@gmail.com/public/full?orderby=starttime&sortorder=ascending&futureevents=true&singleevents=true').to_xml
    
    # Structure containing the feed parsed for display
    @feed_parsed = Array.new

    feed.elements.each('entry') do |entry|
      title = entry.elements['title'].text

      parsed_entry = {title: title}
      @feed_parsed.push(parsed_entry)
      if @feed_parsed.size == 5
        break
      end
    end
  end

  def smallgroups
  end
end

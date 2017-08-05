require 'google/apis/calendar_v3'

class GoogleCalendarService

  def initialize(key, gcalid)
    @calendar = Google::Apis::CalendarV3::CalendarService.new
    @calendar.authorization = nil
    @calendar.key = key
    @gcalid = gcalid
  end

  def get_events(params)
    @calendar.list_events(@gcalid, params)
  end

end

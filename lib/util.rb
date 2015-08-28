class Util

  def self.get_current_time(tz)
    Time.zone = tz
    Time.zone.now.strftime("%Y-%m-%dT%H:%M:%S%z")
  end

end

require 'gdata'

class UscController < ApplicationController
  def home
    client = GData::Client::DocList.new
  end

  def smallgroups
  end
end

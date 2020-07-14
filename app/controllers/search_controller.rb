class SearchController < ApplicationController

  def index
  @members = AvatarSearch.new.members(params["nation"])
  binding.pry
  end

end

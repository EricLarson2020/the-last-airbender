class SearchController < ApplicationController

  def index
  @members = AvatarSearch.new.members(params["nation"])
  end

end

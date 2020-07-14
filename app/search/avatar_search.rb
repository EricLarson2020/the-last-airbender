class AvatarSearch

  def members(nation)
    json = AvatarService.new.members_of_nation(nation)
  
    members = []
      json.each do |member|
        members <<  Member.new({
        name: member[:name],
        allies: member[:allies],
        enemies: member[:enemies],
        affiliation: member[:affiliation],
        url: member[:photoUrl]
        })

    end
    members
  end
end

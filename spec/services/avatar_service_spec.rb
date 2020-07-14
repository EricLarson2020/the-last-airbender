require "rails_helper"

describe AvatarService do
  context "#instance methods" do
    context "members_of_nation" do
      it "returns member data" do

        service = AvatarService.new
        search = service.members_of_nation("fire_nation")
        expect(search).to be_a Array
        member_data = search.first
        
        expect(member_data).to have_key :name
       expect(member_data).to have_key :allies
       expect(member_data).to have_key :enemies
       expect(member_data).to have_key :photoUrl
      end
    end
  end
end

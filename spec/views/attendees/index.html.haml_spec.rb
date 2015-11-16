require 'rails_helper'

RSpec.describe "attendees/index", type: :view do
  before(:each) do
    assign(:attendees, [
      Attendee.create!(
        :name => "Name",
        :email => "Email"
      ),
      Attendee.create!(
        :name => "Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of attendees" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end

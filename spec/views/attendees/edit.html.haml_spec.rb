require 'rails_helper'

RSpec.describe "attendees/edit", type: :view do
  before(:each) do
    @attendee = assign(:attendee, Attendee.create!(
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit attendee form" do
    render

    assert_select "form[action=?][method=?]", attendee_path(@attendee), "post" do

      assert_select "input#attendee_name[name=?]", "attendee[name]"

      assert_select "input#attendee_email[name=?]", "attendee[email]"
    end
  end
end

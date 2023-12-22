require 'rails_helper'

RSpec.feature "BookingForm", type: :feature do
  scenario "User submits a new booking" do
    visit new_booking_path

    fill_in "First name", with: "John"
    fill_in "Last name", with: "Doe"
    fill_in "Animal name", with: "Buddy"
    select "Dog", from: "Animal type"
    fill_in "Hours requested", with: 4
    fill_in "Date of service", with: Date.today

    click_button "Create Booking"

    expect(page).to have_text("Booking was successfully created.")
    expect(Booking.last.first_name).to eq("John")
  end
end

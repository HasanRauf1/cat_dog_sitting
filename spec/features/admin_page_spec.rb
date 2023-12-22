require 'rails_helper'

RSpec.feature "AdminPage", type: :feature do
  scenario "User views all bookings" do
    # Create a sample booking
    Booking.create!(first_name: "Jane", last_name: "Smith", animal_name: "Max", animal_type: "Cat", hours_requested: 3, date_of_service: Date.today)

    visit bookings_path

    expect(page).to have_text("Jane")
    expect(page).to have_text("Max")
  end
end

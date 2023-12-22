# Cat and Dog Sitting Application

## Overview
This Rails application is designed to manage bookings for a cat and dog sitting service. It allows users to create new bookings and view all existing bookings. The application also includes a pricing engine to calculate the service cost based on the type of animal and hours requested.

## Features
- Booking form to collect details for cat or dog sitting requests.
- Pricing engine that calculates the cost of service based on animal type and hours requested.
- Admin page to display all bookings in a table format.
- RSpec tests for pricing engine and end-to-end testing of the booking process.

## Getting Started

### Prerequisites
- Ruby 3.1.0
- Rails 7.0.8

### Installation
1. Clone the repository:
```
git clone https://github.com/HasanRauf1/cat_dog_sitting.git
```
2. Navigate to the application directory:
```
cd CatDogSitting
```
3. Install the required gems:
```
bundle install
```
4. Set up the database:
```
rails db:create
rails db:migrate
```

### Running the Application
- To run the application on your local machine:
```
rails server
```
- Access the application through the browser at `http://localhost:3000`.

### Running the Tests
To run the RSpec tests:
```
bundle exec rspec
```

## Application Structure

- `app/models/booking.rb` - Contains the booking model and pricing logic.
- `app/controllers/bookings_controller.rb` - Handles the booking creation and listing of bookings.
- `app/views/bookings` - Views for booking form and booking list page.
- `spec/models/booking_spec.rb` - Unit tests for the pricing engine.
- `spec/features` - End-to-end tests for the booking process.

## Future Enhancements
- Implement user authentication.
- Integrate form validation checks to ensure data integrity, such as preventing the selection of past dates and requiring all necessary fields to be filled.
- Incorporate a styling library like Bootstrap for more robust and responsive design, enhancing the overall user interface and experience.
- Expand testing to include more comprehensive controller tests, ensuring better coverage and reliability of application features.

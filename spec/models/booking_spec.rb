require 'rails_helper'

RSpec.describe Booking, type: :model do
  describe 'price calculation' do
    context 'when booking for a dog' do
      it 'calculates the correct price for minimum hours' do
        booking = Booking.new(animal_type: 'Dog', hours_requested: 2)
        booking.send(:calculate_price)
        expect(booking.price).to eq(20 + 10 * 2)
      end

      it 'calculates the correct price for maximum hours' do
        booking = Booking.new(animal_type: 'Dog', hours_requested: 8)
        booking.send(:calculate_price)
        expect(booking.price).to eq(20 + 10 * 8)
      end
    end

    context 'when booking for a cat' do
      it 'calculates the correct price for minimum hours' do
        booking = Booking.new(animal_type: 'Cat', hours_requested: 2)
        booking.send(:calculate_price)
        expect(booking.price).to eq(20 + 5 * 2)
      end

      it 'calculates the correct price for maximum hours' do
        booking = Booking.new(animal_type: 'Cat', hours_requested: 8)
        booking.send(:calculate_price)
        expect(booking.price).to eq(20 + 5 * 8)
      end
    end

    context 'with edge cases' do
      it 'handles invalid hours gracefully' do
        booking = Booking.new(animal_type: 'Dog', hours_requested: -1)
        booking.send(:calculate_price)
        expect(booking.price).not_to be_nil
      end

      it 'handles nil animal type gracefully' do
        booking = Booking.new(animal_type: nil, hours_requested: 4)
        booking.send(:calculate_price)
        expect(booking.price).not_to be_nil
      end
    end
  end
end

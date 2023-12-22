class Booking < ApplicationRecord
  before_save :calculate_price

  private

  def calculate_price
    base_charge = 20
    additional_charge = animal_type == 'Dog' ? 10 : 5
    self.price = base_charge + (additional_charge * hours_requested)
  end
end

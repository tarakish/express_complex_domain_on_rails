class User < ApplicationRecord
  def phone_number
    @phone_number ||= PhoneNumber.new(self[:phone_number])
  end

  def phone_number=(new_phone_number)
    self[:phone_number] = new_phone_number.value
    @phone_number = new_phone_number
  end
end

or 
class User < ApplicationRecord
  compose_pf :phone_number, mapping: %w[phone_number value]
end
class Player < ApplicationRecord
  belongs_to :team
  validates :last_name, uniqueness: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end

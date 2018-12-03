class DeadPlayer < ApplicationRecord
  FAME_TYPES = %w(superstar underground unknown deadbeat overrated)

  validates :first_name, :last_name, presence: true
  validates :fame, presence: true, inclusion: { in: FAME_TYPES }

  def full_name
    "#{first_name} #{last_name}"
  end
end

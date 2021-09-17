class VaccinationLog < ApplicationRecord
  belongs_to :medical_user
  # has_one :user
  def self.search(search)
    if search != ""
      VaccinationLog.where('my_number LIKE(?)', "%#{search}%")
    else
      VaccinationLog.all
    end
  end
end

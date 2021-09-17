class VaccinationLog < ApplicationRecord
  belongs_to :medical_user

  def self.search(search)
    if search != ""
      VaccinationLog.where(["my_number LIKE ? OR manufacturer LIKE ? OR lot_number LIKE ? OR vaccination_times LIKE ? ", "#{search}", "#{search}", "#{search}", "#{search}"])
    else
      VaccinationLog.all
    end
  end
  
end

class Reservation < ApplicationRecord
    validates :start_date :presence => { :message => "must be a valid date" }
    validates :end_date, :presence => {:message => "must be a valid date"}
    validates :start_must_be_before_end_date
  def start_must_be_before_end_date
    errors.add(:start_date, "must be before end date") unless
       start_date < end_date
  end 

  def duration
    @duration = end_date.to_i - start_date.to_i
  end
  validates :duration
  numericality: { greater_than : 0 },

  belongs_to :guest, class_name: "User"
  belongs_to :accomodation

end


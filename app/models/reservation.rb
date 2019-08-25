class Reservation < ApplicationRecord
    attr_accessor :time

    validates :start_date, presence: true #, availability: true
    validates :end_date, presence: true
    validate :start_date_must_be_before_end_date

    def start_date_must_be_before_end_date
    errors.add(:start_date, "must be before end date") unless
       start_date < end_date
    end 

    def duration
      @time = self.end_date - self.start_date
      @time = Time.at(@time).utc.strftime("%d")
      puts "duration #{@time}"
    end

    def overlaping_reservation?(booking)
      @houses = Accomodation.find(booking.accomodation.id)
      @houses.reservations.each do |resa|
        if booking.start_date >= resa.start_date && booking.end_date <= resa.end_date
        end
    end

    belongs_to :guest, class_name: "User"
    belongs_to :accomodation
end

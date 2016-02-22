class Exam < ActiveRecord::Base
  # for your reference
  # name:string client:string
  has_many :reservations
end

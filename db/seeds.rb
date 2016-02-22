# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

EXAMS = %w(cs440 abe324 bus201 cs101 cs202 cs300 excel103 corp1080 pp220 dip102)
CLIENTS = %w(facebook cisco microsoft ibm dell avaya)
FIRST_NAMES = %w(Jide Matt Greg Leo Todd Steve Tyler Lani Michelle Karen Danny Sara Sarah Lisa)
LAST_NAMES = %w(Maloney Fajobi Odonnell Anderson Smith Robinson Sanders Bailey Berry)
PAST_EXAM_DATES = 15.days.ago.to_i..Time.now.to_i


def create_exam
  Exam.create name: EXAMS.sample, client: CLIENTS.sample
end

def create_reservation
  exam_count = Exam.all.count
  exam = Exam.find(rand(1..exam_count))
  exam.reservations.create(
    client_first_name: FIRST_NAMES.sample,
    client_last_name: LAST_NAMES.sample,
    datetime:rand(PAST_EXAM_DATES)
  )
end

10.times do 
  create_exam
end

25.times do 
  create_reservation
end
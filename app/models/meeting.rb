class Meeting < ApplicationRecord
  belongs_to :mentor
  belongs_to :mentee
  belongs_to :expertise
end

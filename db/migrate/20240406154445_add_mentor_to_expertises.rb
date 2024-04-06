class AddMentorToExpertises < ActiveRecord::Migration[7.1]
  def change
    add_reference :expertises, :mentor, index: true
  end
end
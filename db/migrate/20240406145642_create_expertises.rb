class CreateExpertises < ActiveRecord::Migration[7.1]
  def change
    create_table :expertises do |t|
      t.string :nome

      t.timestamps
    end
  end
end

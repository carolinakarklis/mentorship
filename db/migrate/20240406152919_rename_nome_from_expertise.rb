class RenameNomeFromExpertise < ActiveRecord::Migration[7.1]
  def change
    rename_column :expertises, :nome, :name
  end
end
class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :first_name
      t.string :last_name
      t.string :image
      t.belongs_to :section, index:true
      t.timestamps
    end
  end
end

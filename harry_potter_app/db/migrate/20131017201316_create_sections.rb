class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :time
      t.belongs_to :lecture, index:true
      t.belongs_to :student, index:true
      t.belongs_to :professor, index:true
      t.timestamps
    end
  end
end

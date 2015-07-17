class CreateRegistration < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.belongs_to :lecture, index: true
      t.belongs_to :student, index: true
    end
  end
end

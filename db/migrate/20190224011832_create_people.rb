class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :job_title
      t.string :email_address
      t.string :phone
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end

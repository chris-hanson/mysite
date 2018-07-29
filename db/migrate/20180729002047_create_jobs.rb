class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.text :logo
      t.text :description
      t.string :position
      t.date :started_at
      t.date :finished_at

      t.timestamps
    end
  end
end

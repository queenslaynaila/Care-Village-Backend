class CreateJobsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :headline
      t.string :date_posted #date the user posted the job
      t.string :expires   #all job should expire one month after posting whether accepted or not
      t.string :care_needed  #type of care from our care categories
      t.string :schedule #can be daily weekly or monthly
      t.string :location #users registered  location
      t.integer :sitter_id
      t.integer :client_id 
      t.string :status, default:"Not Hired"
      t.timestamps
    end
  end
end

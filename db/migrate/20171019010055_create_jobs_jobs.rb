class CreateJobsJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs_jobs do |t|
      t.string :title, null: false
      t.string :location
      t.integer :job_type, null: false
      t.integer :week_hours
      t.text :description, null: false
      t.string :company_name
      t.string :company_url
      t.references :user, index: true, foreign_key: true, null: false
      t.integer :positions, default: 1, null: false
      t.integer :sallary_low
      t.integer :sallary_high
      t.string :contact_email
      t.datetime :expiration_date
      t.datetime :published_at
      t.integer :acess_count, default: 0
      t.integer :status, default: false, null: false

      t.timestamps
    end
  end
end

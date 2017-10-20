class AddColumnJobsJobsStatus < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs_jobs, :status, :boolean,default: false, null: false
  end
end

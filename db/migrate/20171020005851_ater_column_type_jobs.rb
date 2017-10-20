class AterColumnTypeJobs < ActiveRecord::Migration[5.1]
  def change
    remove_column :jobs_jobs, :status, :integer
  end
end

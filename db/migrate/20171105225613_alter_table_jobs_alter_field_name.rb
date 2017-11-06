class AlterTableJobsAlterFieldName < ActiveRecord::Migration[5.1]
  def change
    rename_column :jobs_jobs, :acess_count, :access_count
  end
end

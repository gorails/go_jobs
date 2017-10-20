module Jobs
  class Job < ApplicationRecord
    belongs_to :user
    validates_presence_of :job_type
    validates :company_url, :url => true
    validates_format_of :contact_email,:with => Devise::email_regexp
    JOB_TYPES = {
        1=> 'CLT',
        2=> 'PJ',
        3=> 'HOME-OFFICE'
    }.freeze


  end
end

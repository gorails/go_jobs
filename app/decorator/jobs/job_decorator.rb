module Jobs
  class JobDecorator < Draper::Decorator
    delegate_all

    def link_to_show
      h.link_to h.jobs_job_path(id: self.id),
                class: 'btn btn-info btn-sm',
                title: 'Visualizar',
                style: 'color: #FFF; float: none;' do
        h.content_tag :span, class: 'fa fa-search' do
        end
      end
    end


    def link_to_edit
      h.link_to h.edit_jobs_job_path(id: self.id),
                class: 'btn btn-warning btn-sm',
                title: 'Alterar',
                style: 'color: #FFF; float: none;' do
        h.content_tag :span, class: 'fa fa-pencil' do
        end
      end
    end

  end
end
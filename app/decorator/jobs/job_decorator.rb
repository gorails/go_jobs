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

    def link_to_title
      h.link_to h.show_jobs_list_jobs_jobs_path(id: self.id),
                class: 'text-primary-dark',
                title: self.title do
        h.content_tag :span do
          self.title
        end
      end
    end

    def link_to_read_more
      h.link_to h.show_jobs_list_jobs_jobs_path(id: self.id),
                class: 'btn btn-info btn-sm',
                title: 'Visualizar',
                style: 'color: #FFF; float: none;' do
        h.content_tag :span do
          'Continue Lendo...'
        end
      end
    end

    def link_to_author
      h.link_to h.user_path(id: self.user),
                class: 'link-effect font-s13 font-w600',
                title: '',
                style: '' do
        h.content_tag :span do
          self.user.decorate.name
        end
      end
    end

  end
end
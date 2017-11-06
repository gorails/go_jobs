module Jobs
  class JobsController < ApplicationController
    before_action :set_jobs_job, only: [:show, :edit, :update, :destroy,:show_jobs_list]
    before_action :authenticate_user!, except: %i(index show jobs_list show_jobs_list)
    load_and_authorize_resource except: %i(index show create jobs_list show_jobs_list),param_method: :jobs_job_params
    # GET /jobs/jobs
    def index
      if current_user and current_user.admin?
        @jobs_jobs = Job.all.order(expiration_date: :desc).page params[:page]
      else
        @jobs_jobs = Job.where(user_id:current_user.id).order(expiration_date: :desc).page params[:page]
      end
    end

    def jobs_list
      @jobs_jobs = Job.where('expiration_date >= ?  and ? >=  published_at   and  status = ? ', DateTime.now,DateTime.now,true).includes(:user).page params[:page]
    end

    def show_jobs_list
      @jobs_job.increment!(:access_count)
    end

    # GET /jobs/jobs/1
    def show
    end

    # GET /jobs/jobs/new
    def new
      @jobs_job = Job.new
    end

    # GET /jobs/jobs/1/edit
    def edit
    end

    # POST /jobs/jobs
    def create
      @jobs_job = Job.new(jobs_job_params)
      @jobs_job.user_id = current_user.id
      if @jobs_job.save
        redirect_to @jobs_job, notice: 'Job was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /jobs/jobs/1
    def update
      if @jobs_job.update(jobs_job_params)
        redirect_to @jobs_job, notice: 'Job was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /jobs/jobs/1
    def destroy
      @jobs_job.destroy
      redirect_to jobs_jobs_url, notice: 'Job was successfully destroyed.'
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobs_job
      @jobs_job = Job.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def jobs_job_params
      params.require(:jobs_job).permit(:title, :location, :job_type, :week_hours, :description, :company_name, :company_url, :user_id, :positions, :sallary_low, :sallary_high, :contact_email, :expiration_date,:published_at, :access_count, :status)
    end
  end
end

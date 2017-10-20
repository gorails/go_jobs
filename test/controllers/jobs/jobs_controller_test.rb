require 'test_helper'

class Jobs::JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobs_job = jobs_jobs(:one)
  end

  test "should get index" do
    get jobs_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_jobs_job_url
    assert_response :success
  end

  test "should create jobs_job" do
    assert_difference('Jobs::Job.count') do
      post jobs_jobs_url, params: { jobs_job: { acess_count: @jobs_job.acess_count, company_name: @jobs_job.company_name, company_url: @jobs_job.company_url, contact_email: @jobs_job.contact_email, description: @jobs_job.description, expiration_date: @jobs_job.expiration_date, job_type: @jobs_job.job_type, location: @jobs_job.location, positions: @jobs_job.positions, sallary_high: @jobs_job.sallary_high, sallary_low: @jobs_job.sallary_low, status: @jobs_job.status, title: @jobs_job.title, user_id: @jobs_job.user_id, week_hours: @jobs_job.week_hours } }
    end

    assert_redirected_to jobs_job_url(Jobs::Job.last)
  end

  test "should show jobs_job" do
    get jobs_job_url(@jobs_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobs_job_url(@jobs_job)
    assert_response :success
  end

  test "should update jobs_job" do
    patch jobs_job_url(@jobs_job), params: { jobs_job: { acess_count: @jobs_job.acess_count, company_name: @jobs_job.company_name, company_url: @jobs_job.company_url, contact_email: @jobs_job.contact_email, description: @jobs_job.description, expiration_date: @jobs_job.expiration_date, job_type: @jobs_job.job_type, location: @jobs_job.location, positions: @jobs_job.positions, sallary_high: @jobs_job.sallary_high, sallary_low: @jobs_job.sallary_low, status: @jobs_job.status, title: @jobs_job.title, user_id: @jobs_job.user_id, week_hours: @jobs_job.week_hours } }
    assert_redirected_to jobs_job_url(@jobs_job)
  end

  test "should destroy jobs_job" do
    assert_difference('Jobs::Job.count', -1) do
      delete jobs_job_url(@jobs_job)
    end

    assert_redirected_to jobs_jobs_url
  end
end

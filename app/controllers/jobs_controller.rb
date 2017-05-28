class JobsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_jobs, only: [:edit, :show, :update, :destroy]

  def index
    @jobs = Job.all.order('created_at DESC')
  end

  def new
    @job = current_user.jobs.build
  end

  def create
    @job = current_user.jobs.build(jobs_params)

    if @job.save
      redirect_to @job
    else
      render 'new'
    end
  end

  def show
    #teste commit
  end

  def edit
  end

  def update
    if @job.update(jobs_params)
      redirect_to @job
    else
      render 'edit'
    end
  end

  def destroy
    @job.destroy
    redirect_to root_path
  end

  private

  def jobs_params
    params.require(:job).permit(:title, :requirements, :description, :id)
  end

  def find_jobs
    @job= Job.find(params[:id])
  end

end

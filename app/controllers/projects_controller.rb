class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]
  # this is a devise method to allow viewers on index and show, but must log in for otehrs
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @projects = Project.all.order("created_at DESC")
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new project_params

    if @project.save
      redirect_to @project, notice: "Nice Lyna! That project was successfuly saved!"
    else
      render 'new'
    end
  end

  def show
    # under private find project params below and before_action
  end

  def edit
    # under private find project params below and before_action
  end

  def update
    if @project.update project_params
      redirect_to @project, notice: "Nice Lyna! That project was successfuly updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end


  private

  def find_project
    @project = Project.friendly.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :link, :slug)
  end

end

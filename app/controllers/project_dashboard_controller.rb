class ProjectDashboardController < ApplicationController

  before_action :fetch_project, only: [:root, :branch]
  before_action :fetch_branches, only: [:root, :branch]


  def root
  end

  def branch
    @branch = Branch.find params[:branch_id]
  end

  def fetch_project
    @project = Project.find params[:id]
  end
  
  def fetch_branches
    @branches = @project.branches
  end

end

class ProjectsController < ApplicationController
  before_action :set_sort_option
  before_action :authenticate_user!

  def index
    @projects =  Project.includes(:category, :user)
    @projects = @projects.order(set_sort_option).paginate(per_page: 2, page: params[:page])

    respond_to do |format|
      format.html
      format.js
    end
  end


  def set_sort_option
    case params[:order_by]
    when 'Category Name'
      'categories.name'
    when 'Username'
      'users.username'
    when 'Project Title'
      'projects.title'
    else
      'projects.created_at'
    end

  end
end

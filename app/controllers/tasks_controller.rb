class TasksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @task = @list.tasks.new
    render :new
  end
  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.new(task_params)
    if @task.save
      redirect_to lists_path(@task.list)
    else
      render :new
    end
  end

  def destroy
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id]).destroy
    redirect_to list_path
  end

  private
  def task_params
    params.require(:task).permit(:description)
  end

end

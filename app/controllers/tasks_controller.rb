class TasksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @task = @list.tasks.new
    render :new
  end

  def show
    @list = List.find(params[:list_id])
    @task = @list.tasks.all
  end

  def edit
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
  end

  def update
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])

    if @task.update(task_params)
      redirect_to list_path(@list)
    else
      render :edit
    end
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
    @task = @list.tasks.find(params[:id])
    @task.destroy
    redirect_to list_path(@list)
  end

  private
  def task_params
    params.require(:task).permit(:description)
  end

end

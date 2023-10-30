class TasksController < ApplicationController
    def index
        @tasks = Task.order(created_at: :desc)
    end

    def create
        @task = Task.new(task_params)
        if @task.save
            redirect_to root_path, notice: "Задача была создана"
        else 
            render :new
        end
    end

    def new
        @task = Task.new
    end

    private

    def task_params
        params.required(:task).permit(:body, :end, :begin)
    end
end

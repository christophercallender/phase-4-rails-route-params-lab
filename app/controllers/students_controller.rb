class StudentsController < ApplicationController
  def id
    render json: Student.find(params[:id])
  end

  def index
    render json:
             Student.where(
               "first_name LIKE ? OR last_name LIKE ?",
               "%#{params[:name]}%",
               "%#{params[:name]}%"
             )
  end
end

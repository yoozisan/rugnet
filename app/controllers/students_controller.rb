class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @student = Student.all
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def show
  end

  def update
    if @student.update(student_params)
      redirect_to students_path, notice: "生徒情報を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @student.destroy
      redirect_to students_path, notice:"生徒情報を削除しました！"
  end

  def create
    @student = current_user.students.build(student_params)
    if params[:back]
      render :new
    else
      if @student.save
        redirect_to students_path, notice: "生徒情報を登録しました！"
      else
        render :new
      end
    end
  end

  def confirm
    @student = current_user.students.build(student_params)
    render :new if @student.invalid?
  end

  private
  def student_params
  params.require(:student).permit(:student_name, :category, :shcool_year)
  end

  def set_student
    @student = Student.find(params[:id])
  end

end

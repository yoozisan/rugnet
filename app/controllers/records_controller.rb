class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :edit, :update, :destroy]

  def index
    @record = Record.all
  end

  def new
    @record = Record.new
    @students = Student.all
  end

  def edit
  end

  def show
  end

  def update
    if @record.update(record_params)
      redirect_to records_path, notice: "健康情報を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @record.destroy
    redirect_to records_path, notice:"健康情報を削除しました！"
  end

  def create
    @record = Record.new(record_params)
    # @record = @student.records.build(record_params)
    # @student = Student.find_by(id: params[:student_id])
    # @student = current_user.students.records.build(record_params)
    # @record = Record.new(record_params)
    if params[:back]
      render :new
    else
      if @record.save
        redirect_to records_path, notice: "健康情報を登録しました！"
      else
        render :new
      end
    end
  end

  def confirm
    @record = Record.new(record_params)
    # @record = @student.records.build(record_params)
    # @student = Student.find(id: student_id)
    # @student = current_user.students.records.build(record_params)
    # @record = Record.new(record_params)
    render :new if @record.invalid?
  end

  private
  def record_params
    params.require(:record).permit(:record_at, :body_temperature, :is_cough, :is_sneeze, :is_runny_nose, :is_dull, :is_family_illness, :attendance, :student_id)
  end

  def set_record
    @record = Record.find(params[:id])
  end
end

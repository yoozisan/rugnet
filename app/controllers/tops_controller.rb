class TopsController < ApplicationController
  def index
  end

  def health_info
    @records = Record.all
    @q = Record.ransack(params[:q])
    @records = @q.result(distinct: true)
  end
end

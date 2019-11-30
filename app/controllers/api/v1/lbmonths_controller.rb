class Api::V1::LbmonthsController < ApiController
  before_action :set_lbmonth, only: [:show]

  def index
    lbmonths = Lbmonth.limit(1)
    render json: lbmonths
  end

  def show
    render json: @lbmonth
  end

  def create
    lbmonth = Lbmonth.new(lbmonth_params)
    if lbmonth.save
      render json: lbmonth, status: :created
    else
      render json: { errors: lbmonth.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @lbmonth = Lbmonth.limit(1)
    if @lbmonth.update_attributes(lbmonth_params)
      head :no_content
    else
      render json: { errors: @employee.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

    def set_lbmonth
      @lbmonth = Lbmonth.limit(1)
    end

    def lbmonth_params
      params.fetch(:lbmonth, {}).permit(:jan, :feb, :mar, :apr, :may, :jun, :jul ,:aug,:sep,:oct,:nov,:dec)
    end


end

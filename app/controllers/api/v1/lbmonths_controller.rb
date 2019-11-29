class Api::V1::LbmonthsController < ApiController
  def index
    lbmonths = Lbmonth.all
    render json: lbmonths
  end
  def show
    render json: @lbmonth
  end

  private

    def set_lbmonth
      @lbmonth = Lbmonth.find(params[:id])
    end
end

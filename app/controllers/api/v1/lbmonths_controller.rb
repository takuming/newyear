class Api::V1::LbmonthsController < ApiController
  before_action :set_lbmonth, only: [:show]

  # ActiveRecordのレコードが見つからなければ404 not foundを応答する
  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: { error: '404 not found' }, status: 404
  end

  def index
    lbmonths = Lbmonth.all
    render json: lbmonths
  end

  def show
    render json: @lbmonth
  end

  private

  def set_lbmonth
    @Lbmonth = Lbmonth.find(params[:id])
  end

end

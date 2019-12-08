class Api::V1::GoalsController < ApiController
  # 拾えなかったExceptionが発生したら500 Internal server errorを応答する
  rescue_from Exception, with: :render_status_500

  # ActiveRecordのレコードが見つからなければ404 not foundを応答する
  rescue_from ActiveRecord::RecordNotFound, with: :render_status_404

  def index
    goals = Goal.all
    render json: goals
  end

  def show
    render json: @goal
  end

  def create
    goal = Goal.new(goal_params)
    if goal.save
      render json: goal, status: :created
    else
      render json: { errors: goal.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @goal = Goal.find(params[:id])
    if @goal.update_attributes(goal_params)
      head :no_content
    else
      render json: { errors: @goal.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def set_goal
    @goal = goal.find(params[:id])
  end

  def goal_params
    params.fetch(:goal, {}).permit(:title, :action, :problem)
  end
  

  def render_status_404(exception)
    render json: { errors: [exception] }, status: 404
  end

  def render_status_500(exception)
    render json: { errors: [exception] }, status: 500
  end


end

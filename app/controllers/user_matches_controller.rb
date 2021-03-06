class UserMatchesController < ApplicationController
  before_action :set_user_match, only: [:update]

  def index
    @user_matches = UserMatch.all.where(user: current_user)
  end

  def update
    @user_match.update(user_match_params)
  end

  private

  def set_user_match
    @user_match = UserMatch.find(params[:id])
  end

  def user_match_params
    params.require(:user_match).permit(:status)
  end
end

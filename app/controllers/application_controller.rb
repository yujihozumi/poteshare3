class ApplicationController < ActionController::Base
  before_action :set_search
  def set_search
    @q = Room.ransack(params[:q]) #ransackの検索メソッド
  end
  
end

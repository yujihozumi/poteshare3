class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    @room.user_id = current_user.id
    if @room.save
      flash[:notice] = "ルーム情報を新規登録しました"
      redirect_to @room
    else
      render "new"
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to user_path(room.user), notice: "レシピを削除しました。"
  end

  def search
    @q = Room.ransack(params[:q])
    @results = @q.result(distinct: true)
    @count = @results.count
  end

  private
  def room_params
    params.require(:room).permit(:room_name, :room_body, :price, :address, :room_image)
  end
end

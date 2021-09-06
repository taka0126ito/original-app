class MainsController < ApplicationController
  def index
    @mains = Main.all.order(created_at: :DESC)
  end

  def new
    if user_signed_in?
    @main = Main.new
    else
      redirect_to new_user_session_path
    end
  end

  def edit
    if user_signed_in?
    @mains = Main.all
  else
    redirect_to new_user_session_path
  end
  end

  def create
    @main = Main.new(main_params)
    if @main.save
      redirect_to root_path
    else
      render :new

    end
  end

  def show
  end

  def update
  end

  def destroy
    main = Main.find(params[:id])
    main.destroy
    redirect_to root_path
  end

  private

  def main_params
    params.require(:main).permit(:image, :event_id, :weight_id, :number_id, :sets_id).merge(user_id: current_user.id)
  end
end

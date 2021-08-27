class MainsController < ApplicationController

  def index
    #@user = User.nickname

  end

  def new
  @main = Main.new
  end

  def edit
  end

  def show
  end

  def update
  end

private

def main_params
  params.recuire(:main).permit(:image).merge(user_id: current_user.id)
end

end

class MainsController < ApplicationController
 

  def index
    @mains = Main.order(created_at: :DESC)
    
    @potential = Potential.new(potential_params)
    
  end

  def new
    if user_signed_in?
    @main = Main.new
    else
      redirect_to new_user_session_path
    end
  end

  def edit
    
  end

  def show
    if user_signed_in?
      @mains = Main.all.order(created_at: :DESC)
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

  def update
    if @main.update(main_params)
      redirect_to main_path 
     else
      render :"mains/edit"
     end
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

  def potential_params
    #params.require(:potential).permit(:bench_press_id, :squat_id, :deadlift_id).merge(user_id: current_user.id)
  end

end

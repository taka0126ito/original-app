class PotentialsController < ApplicationController

  def index
    @potential = Potential.all
  end

def edit
  @main = main.find(potential_params)
end

  def potential_params
    params.require(:potential).permit(:bench_press_id, :squat_id, :deadlift_id).merge(user_id: current_user.id)
  end


end

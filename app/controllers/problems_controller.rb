class ProblemsController < ApplicationController
  def index
    @problems = Problem.problems_by_date
  end
  
  def new
    @problem = Problem.new
  end

  def create
  end

  def show
  end

  private

  def problems_params
    params.require(:problem).permit(:wall_id, :name, :color, :grade, :image, :style_ids:[])
  end
end

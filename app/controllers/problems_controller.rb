class ProblemsController < ApplicationController
  def index
    @problems = Problem.problems_by_date
  end
  
  def new
  end

  def create
  end

  def show
  end
end

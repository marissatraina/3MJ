class CohortsController < ApplicationController
  def index
    if is_admin?
      @cohorts = Cohort.all
      @cohort = Cohort.new
    else
      redirect_to "/cohorts/#{current_user.cohort.id}"
    end
  end
  def create
    @cohort = Cohort.new(cohort_params)
    if @cohort.save
      redirect_to cohorts_path
    end
  end

  def show
    find_cohort
    @r2vote = R2vote.new
  end

  def index2
    find_cohort
  end

private

  def cohort_params
    params.require(:cohort).permit(:name)
  end
  def find_cohort
      @cohort = Cohort.find(params[:id])
  end
end

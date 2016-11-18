class CohortsController < ApplicationController
  def index
    if is_admin?
      @cohorts = Cohort.all
    else
      redirect_to "/cohorts/#{current_user.cohort.id}"
    end
  end

  def show
    find_cohort
  end

  def index2
    find_cohort
  end

private

  def find_cohort
      @cohort = Cohort.find(params[:id])
  end
end

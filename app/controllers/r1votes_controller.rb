class R1votesController < ApplicationController

  def create

    @r1vote = R1vote.new(vote_params)
    if @r1vote.save
      redirect_to cohort_path(params[:cohort_id])
    end
  end

  def destroy
    find_voted
    @vote.destroy
    redirect_to cohort_path(params[:cohort_id])
  end

  private
  def vote_params
    {pitch: Pitch.find(params[:pitch_id]), user: current_user}
  end

  def find_voted
    @vote = R1vote.find(params[:id])
  end
end

class R1votesController < ApplicationController

  def create

    @r1vote = R1vote.new(vote_params)
    if @r1vote.save
      redirect_to pitches_path
    end
  end

  def destroy
    find_vote
    @vote.destroy
    redirect_to pitches_path
  end

  private
  def vote_params
    {pitch: Pitch.find(params[:pitch_id]), user: current_user}
  end

  def find_vote
    @vote = R1vote.find(params[:id])
  end
end

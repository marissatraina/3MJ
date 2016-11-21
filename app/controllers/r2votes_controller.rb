class R2votesController < ApplicationController

  def create
    @voted = R2vote.find_by(user:current_user, pitch: params[:pitch_id])
    if @voted
      @voted.update(rank: params[:rank])
      if @voted.save
        redirect_to cohort_path(params[:cohort_id])
      end
    else

      @r2vote = R2vote.new(vote_params)
      if @r2vote.save
        redirect_to cohort_path(params[:cohort_id])
      end
    end
  end

   def destroy
    find_voted
    @vote.destroy
    redirect_to cohort_path(params[:cohort_id])
  end

 def find_voted
    @vote = R2vote.find(params[:id])
  end

  def vote_params
    {pitch: Pitch.find(params[:pitch_id]), user: current_user, rank: params[:rank]}
  end
end

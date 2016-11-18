class PitchesController < ApplicationController

 def index
    @pitchess = Pitch.all
  end

  def new
    @pitch = Pitch.new
  end

  def create
    @user = current_user
    @pitch = Pitch.new(pitch_params)
    if @pitch.save
      redirect_to @pitch
    else
      render 'new'
    end
  end

  def show
    find_pitch
  end

  def edit
    find_pitch
  end

  def update
    find_pitch

    if @post.update(pitch_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    find_post

    @pitch.destroy

    redirect_to root_url
  end

  private

    def find_pitch
      @pitch = Pitch.find(params[:id])
    end

    def pitch_params
      {app_name: params[:pitch][:app_name], text: params[:pitch][:text], user: @current_user}
    end

end


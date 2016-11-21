module ApplicationHelper
  def logged_in?
    !!session[:user_id]
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def is_admin?
    current_user.admin
  end

  def voted_for?(pitch)
    !!current_user.first_votes.find_by(pitch:pitch)
  end
  def find_vote(pitch)
    current_user.first_votes.find_by(pitch:pitch)
  end
  def find_vote2(pitch)
    current_user.ranking_votes.find_by(pitch:pitch)
  end

end

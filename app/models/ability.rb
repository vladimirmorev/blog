class Ability
  include CanCan::Ability

  def initialize(user)
    # allow everyone to read everything
    if user.nil?
      can :read, :all
    elsif user && user.admin?
      can :manage, :all
      can :access, :rails_admin
      can :dashboard # allow access to dashboard
    else
      can :read, :all
      can :manage, Post, user_id: user.id
      can :manage, User, id: user.id
      cannot :approve, Post
    end
  end
end
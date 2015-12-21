class Ability
  include CanCan::Ability

  def initialize(user)  
    # allow everyone to read everything   
    can :read, :all  
    can :manage, Post, user_id: user.id 
    can :manage, Comment, user_id: user.id  
    can :manage, User, user_id: user.id 
    if user && user.admin?
      can :manage, :all   
      can :access, :rails_admin                       
      can :dashboard                  # allow access to dashboard    
    end
  end
end
class Ability
  include CanCan::Ability

  def initialize(user)  
    # allow everyone to read everything   
    can :read, :all  
    if user && user.admin?
      can :manage, :all   
      can :access, :rails_admin                       
      can :dashboard                  # allow access to dashboard    
    end
  end
end
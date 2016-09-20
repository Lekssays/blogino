class Ability
  include CanCan::Ability
    def initialize(user)
    can :read, :all   
    can :access, :ckeditor                # allow everyone to read everything
    if user && user.admin?
      can :access, :rails_admin 
      can :manage, :all      # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard
    end
  end
end
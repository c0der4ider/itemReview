class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    # Admin has full power
    if user.has_role? [:super, :admin]
      can :manage, :all
    else
      cannot :read, [ Reservation, Transaction, Jobtransaction ]

      can :read, User

      can :manage, User, id: user.id
      can :manage, Profile, user_id: user.id
    end
  end
end
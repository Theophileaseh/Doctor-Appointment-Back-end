class Ability
  include CanCan::Ability

  def initialize(user)
    if user.role == 'admin'
      can :manage, :all
    else
      can :destroy, Appointment do |appointment|
        appointment.user == user
      end

      can :update, Appointment do |appointment|
        appointment.user == user
      end
      can :create, Appointment
    end
  end
end

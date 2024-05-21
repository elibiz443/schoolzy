# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
      cannot :create, User
      cannot :read, User
    else
      case user.role
      when "super_admin"
        can :create, User
        can :manage, [User]
        can :manage, TimeTable
        can :manage, Attendance
      when "admin"
        can :create, User
        can :manage, User, id: user.id
        can :manage, TimeTable
        can :manage, Attendance
      when "learner", "tutor", "guardian"
        cannot :create, User
        can :read, User, id: user.id
        can :read, TimeTable
        can :read, Attendance
      else
        cannot :create, User
        cannot :read, User
        can :read, TimeTable
        can :read, Attendance
      end
    end
  end
end

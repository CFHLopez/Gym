class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
       if user.role == "Administrador"
          can :manage, :all
       elsif user.role == "Profesor"
        alias_action :index, :nuevo, :mostrar, :crear, :read, :editar, :update, :to => :crud
        can :crud, Alumno
        can :crud, Asist
        can :crud, Pago
        can :crud, Ficha
        can :read , :visit
      elsif user.role == "Alumno"
        can :read , :visit
    else
        can :read, :index
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
   end # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end

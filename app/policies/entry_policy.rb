class EntryPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    user.present? && user.role == 'admin'
  end

  def update?
    create?
  end

  def destroy?
    create?
  end
end

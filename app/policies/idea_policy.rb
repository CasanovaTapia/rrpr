class IdeaPolicy < EntryPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    record.status == "pub" || (user.present? && user.admin?)
  end
end

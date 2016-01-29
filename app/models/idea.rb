class Idea < ActiveRecord::Base

  def draft?
    status == 'draft'
  end

  def pub?
    status == 'pub'
  end
end

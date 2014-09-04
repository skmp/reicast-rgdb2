class Game < ActiveRecord::Base
  has_many :discs
  has_many :compats
  default_scope ->{ order('title') }

  def compat_known?
  	false
  end

  def compat_summary
  	"Unknown"
  end

  def compat_stability
  	"Unknown"
  end

  def compat_playability
  	"Unknown"
  end
end

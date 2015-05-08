class ImpOwner < ActiveRecord::Base
  belongs_to :knowandcul

  def GetImpOwner
  	return self.ImperativeOwner
  end
end

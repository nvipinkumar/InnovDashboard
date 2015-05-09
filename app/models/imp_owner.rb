class ImpOwner < ActiveRecord::Base
  belongs_to :knowandcul
  belongs_to :Procandeco

  def GetImpOwner
  	return self.ImperativeOwner
  end
end

class ImpOwner < ActiveRecord::Base
  belongs_to :knowandcul
  belongs_to :Procandeco
  belongs_to :Techandsol

  def GetImpOwner
  	return self.ImperativeOwner
  end
end

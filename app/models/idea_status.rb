class IdeaStatus < ActiveRecord::Base
  belongs_to :knowandcul
  belongs_to :Procandeco
  belongs_to :Techandsol

  def GetIdeaStatus
  	return self.Status
  end

end

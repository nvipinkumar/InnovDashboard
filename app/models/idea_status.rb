class IdeaStatus < ActiveRecord::Base
  belongs_to :knowandcul
  belongs_to :Procandeco

  def GetIdeaStatus
  	return self.Status
  end

end

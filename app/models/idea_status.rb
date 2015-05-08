class IdeaStatus < ActiveRecord::Base
  belongs_to :knowandcul

  def GetIdeaStatus
  	return self.Status
  end

end

class Knowandcul < ActiveRecord::Base
	has_many :IdeaStatus
	has_many :ImpOwner


  def GetStatus
    return "Reviewed"
  end

end

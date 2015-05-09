class Procandeco < ActiveRecord::Base
	has_many :IdeaStatus
	has_many :ImpOwner
	validates :Name, :Summary, :Description, :Owner, :Reviewed, :Comments, :Action, :presence => true


  def GetStatus
    @ideaStat = IdeaStatus.find(self.Status_id)
    return @ideaStat.GetIdeaStatus
  end

  def GetOwner
  	@impowner = ImpOwner.find(self.ImpOwner_id)
  	return @impowner.GetImpOwner
  end
end
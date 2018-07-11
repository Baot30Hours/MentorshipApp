module ApplicationHelper
    
    def newConnectionForMentorPath(mentor_id)
		return "/connections/new?mentor_id=" + mentor_id.to_s
	end
	def newConnectionForMenteePath(mentee_id)
		return "/connections/new?mentee_id=" + mentee_id.to_s
	end

end

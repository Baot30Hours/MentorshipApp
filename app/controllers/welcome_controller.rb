class WelcomeController < ApplicationController
  def index
  	@mentors = Mentor.all
  	@mentees = Mentee.all
  	@combined = (@mentors + @mentees).sort_by(&:created_at).reverse
  end
end

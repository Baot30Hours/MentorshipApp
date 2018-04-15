class MentorsController < ApplicationController	
      def index
      	  @mentors = Mentor.all
      end

      def show
      	  @mentor = Mentor.find(params[:id])
      end

      def new
      	  @mentor = Mentor.new
      end

      def edit
      	  @mentor = Mentor.find(params[:id])
      end

      def create
	  @mentor = Mentor.new(mentor_params)
	  
	if @mentor.save
 	   redirect_to @mentor
 	else
	   render 'new'
  	end
      end

      def update
      	  @mentor = Mentor.find(params[:id])
      	  
	  if @mentor.update(mentor_params)
      	     redirect_to @mentor
      	  else
	     render 'edit'
      	  end
      end

      def destroy
      	  @mentor = Mentor.find(params[:id])
      	  @mentor.destroy
      	  
	  redirect_to mentors_path
      end

      private
      def mentor_params
      	  params.require(:mentor).permit(:email, :name, :date_created, :job_title, :expertise, :mentee_slots)
      end
end
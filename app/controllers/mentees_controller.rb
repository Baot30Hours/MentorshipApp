class MenteesController < ApplicationController		
      def index
      	  @mentee = Mentee.all
      end

      def show
      	  @mentee = Mentee.find(params[:id])
      end

      def new
      	  @mentee = Mentee.new
      end

      def edit
      	  @mentee = Mentee.find(params[:id])
      end

      def create
	  @mentee = Mentee.new(mentee_params)
	  
	if @mentee.save
 	   redirect_to @mentee
 	else
	   render 'new'
  	end
      end

      def update
      	  @mentee = Mentee.find(params[:id])
      	  
	  if @mentee.update(mentee_params)
      	     redirect_to @mentee
      	  else
	     render 'edit'
      	  end
      end

      def destroy
      	  @mentee = Mentee.find(params[:id])
      	  @mentee.destroy
      	  
	  redirect_to mentee_path
      end

      private
      def mentee_params
      	  params.require(:mentee).permit(:email, :name, :date_created, :job_title, :expertise, :notes)
      end
end
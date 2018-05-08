class EventsController < ApplicationController

    def create
    	@connection = Connection.find(params[:connection_id])
    	@comment = @connection.comments.create(comment_params)
    	redirect_to connection_path(@connection)
    end
 
    private
    def event_params
              params.require(:event).permit(:event_type, :method, :date, :notes)
    end

end

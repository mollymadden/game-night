class ContributionsController < ApplicationController
  http_basic_authenticate_with name: "molly", password: "password", except: [:create]

    def create
        @attendee = Attendee.find(params[:attendee_id])
        @contribution = @attendee.contributions.create(contribution_params)
        redirect_to attendee_path(@attendee)
      end
     
      private
        def contribution_params
          params.require(:contribution).permit(:contribution, :details)
        end
end

class ExpertisesController < ApplicationController
    before_action :set_mentor
    def new
        @expertise = Expertise.new
    end

    def create
        expertise = Expertise.new(expertise_params.merge(mentor_id:@mentor.id))
        if expertise.save
          redirect_to mentors_path
        else
          render :new
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentor
      @mentor = Mentor.find(params[:mentor_id])
    end

    # Only allow a list of trusted parameters through.
    def expertise_params
      params.require(:expertise).permit(:name)
    end
end

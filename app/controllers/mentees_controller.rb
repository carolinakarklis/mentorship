class MenteesController < ApplicationController
  def new
    @mentee = Mentee.new
  end

  def create
    mentee = Mentee.new(mentees_params)
    if mentee.save
      redirect_to mentees_path
    else
      render :new
    end
  end

  def edit
  end

  def index
    @mentees = Mentee.all
  end

  private

  def mentees_params
    params.require(:mentee).permit(:name, :bio, :email)
  end
end

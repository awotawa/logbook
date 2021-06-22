class LoggersController < ApplicationController
  # Possibility to view a sumarry of all that the website has to offer
  def index
    @categories = Category.all
  end

  # Possibility to view a section in particular
      # Logbook
      # Completed projects
      # Ideas for projects
      # Suggestions (future)
  def show
    @category = Category.find(params[:id])
  end

  private

    def category_params
      params.require(:category).permit(:name)
    end
end

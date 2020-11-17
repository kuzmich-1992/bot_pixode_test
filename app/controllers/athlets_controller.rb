class AthletsController < ActionController::Base
  def index
    @athlets = Athlet.all
  end
end

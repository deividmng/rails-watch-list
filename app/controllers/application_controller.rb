class ApplicationController < ActionController::Base

  def index
    @movies = movies.all
end

end

#aqui va los controladores

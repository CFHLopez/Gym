class AdministradorsController < ApplicationController
  def index
    @administradors = administrador.all
  end
  
end

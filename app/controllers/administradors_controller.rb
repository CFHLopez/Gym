class AdministradorsController < ApplicationController
  def index
    @administradors = Administrador.all
  end
end

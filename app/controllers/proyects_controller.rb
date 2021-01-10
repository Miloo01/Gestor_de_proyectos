class ProyectsController < ApplicationController
    http_basic_authenticate_with name:"desafiovamoscontodo", password:"XAHTJEAS23123%23"

    def dashboard
        @proyect = Proyect.new
        if params[:state].present?
            @proyects = Proyect.where('state = ?', params[:state])
        else
            @proyects = Proyect.all
        end

    end

    def create
        @proyect = Proyect.create(name: params[:name], description: params[:description], started: params[:started], finished: params[:finished], state: params[:state])
        
        @proyects = Proyect.all
        render :dashboard
        
    end
end
class PagesController < ApplicationController
  def batman

  end

  def superman

  end

  def batmanvssuperman
  	@votossuper = VotoSuperman.all
  	@votosbat = VotoBatman.all
  end

  def save_vote
  	if params[:name].present? && params[:email].present? 
  		if params[:class]== "superman"
	  		@voto = VotoSuperman.new(name: params[:name], email: params[:email])
	  		@voto.save
	  		redirect_to root_path, notice: "Voto guardado correctamente"
  		end
  		if params[:class]== "batman"
	  		@voto = VotoBatman.new(name: params[:name], email: params[:email])
	  		@voto.save
	  		redirect_to root_path, notice: "Voto guardado correctamente"
  		end
  	else
  		redirect_to root_path, alert: "Ingrese todos los campos solicitados"
  	end
  end
end

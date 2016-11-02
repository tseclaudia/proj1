class PokemonsController < ApplicationController

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health -= 10
		@pokemon.save
		if @pokemon.health <= 0
			@pokemon.destroy
		end
		redirect_to :controller => 'trainers', :action => 'show', :id => @pokemon.trainer_id
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new pokemon_params
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.trainer = current_trainer
		if @pokemon.save
			redirect_to :controller => 'trainers', :action => 'show', :id => current_trainer.id
		else
			redirect_to :controller => 'pokemons', :action => 'new'
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end
	end

	private 
	def pokemon_params
		params.require(:pokemon).permit(:name)
	end
end
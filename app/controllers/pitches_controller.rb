class PitchesController < ApplicationController
	def index
		pitches = Pitch.all
		@pitches = pitches.as_json
	end

	def new
	end

	def create
		pitch = current_user.pitches.create(title: params[:title], body: params[:body], user: current_user)
		render :json =>  pitch, :include => {:user}
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end
end

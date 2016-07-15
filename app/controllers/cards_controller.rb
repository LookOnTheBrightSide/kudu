class CardsController < ApplicationController
	before_action :target_card, only:[:show, :update ,:edit ,:destroy]
	def index
		@cards = Card.all.order("created_at DESC")
	end

	def show
	end

	def new
		@card = current_user.cards.build
	end
	def create
		@card = current_user.cards.build(card_params)
		if @card.save
			redirect_to @card, notice: "Success! Card created"
		else
			render "new"
		end
	end
	def edit

	end
	def update
		if @card.update(card_params)
			redirect_to @card, notice: "Success! Card updated"
		else
			render "edit", notice: "Failed to updated"
		end
	end
	def destroy
		@card.destroy
		redirect_to root_path
	end

	private
	def card_params
		params.require(:card).permit(:title,:description,:start_date,:end_date,:active,:premium,:interview_first, :image)
	end
	def target_card
		@card = Card.find(params[:id])
	end
end

class DecksController < ApplicationController

  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
  end

  def new
    @deck = Deck.new
  end

  def edit
    @deck = Deck.find(params[:id])
  end

  def create
    @deck = Deck.new(name: params[:deck][:name])
    @deck.save
    redirect_to "/decks"
  end

  def update
    @deck = Deck.find(params[:id])
    @deck.update(name: params[:deck][:name])
    redirect_to deck_path(@deck)
  end

  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy
    redirect_to "/decks"
  end



end
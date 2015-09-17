# characters_contorller.rb
class CharactersController < ApplicationController
  include ApplicationHelper

  #before_action :set_character, only: [:show, :edit, :update, :destroy]

  # GET /characters
  # GET /characters.json
  def index
    @characters = get_marvel_characters
    render json: @characters
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
  end

  # GET /characters/new
  def new
  end

  # GET /characters/1/edit
  def edit
  end

  # POST /characters
  # POST /characters.json
  def create

  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update

  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    #def set_character
    #  @character = Character.find(params[:id])
    #end
end

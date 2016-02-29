class SpeciesController < ApplicationController
  def index
    #   if params.has_key?(:name) && !params[:name].strip.empty?
    #     name = params[:name].strip
    #
    #   #Save Animal Name to Database
    #
    #
    #   session[:name] = name.id.to_s
    #
    # else
    #
    # render 'index'
  end





  def create
    @animal = Animal.new
    @animal.name = params[:name]
    @animal.save
    redirect_to '/'
  end

  def edit
  end

  def destroy
  end

  def update
  end

end

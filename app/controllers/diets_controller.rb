class DietsController < ApplicationController
  before_action :authenticate_user!

  def index
    # here is the information on the diet
  end

  def core
  end

  def moderation
  end

  def options
  end

  def cheat
  end

  def plans
  end

  def mobi_meals
  end

  def new
    # daily form to log your diet
  end

  def create
    # @diet = Diet.new(user_id: current_user.id,
    #                  date: Time.now,
    #                  weight: params['weight'],
    #                  moderation1: params['mod1'],
    #                  moderation2: params['mod2'],
    #                  moderation3: params['mod3'],
    #                  option1: params['opt1'],
    #                  option2: params['opt2'],
    #                  water1: params['wat1'],
    #                  water2: params['wat2'],
    #                  water3: params['wat3'],
    #                  water4: params['wat4'])
  end

  def show
    # charts to show your improvement and your food intke?
  end

  def edit
    @user = User.find(current_user.id)
    @diets = Diet.where(user_id: @user.id).order(:day)
    @moderations = [0, 1, 2, 3]
    @options = [0, 1, 2]
    @chocolate_bar = [0, 1]
  end

  def update
  end
end

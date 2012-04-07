class UserWishesController < ApplicationController
  # GET /user_wishes
  # GET /user_wishes.json
  def index
    @user_wishes = UserWish.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_wishes }
    end
  end

  # GET /user_wishes/1
  # GET /user_wishes/1.json
  def show
    @user_wish = UserWish.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_wish }
    end
  end

  # GET /user_wishes/new
  # GET /user_wishes/new.json
  def new
    @user_wish = UserWish.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_wish }
    end
  end

  # GET /user_wishes/1/edit
  def edit
    @user_wish = UserWish.find(params[:id])
  end

  # POST /user_wishes
  # POST /user_wishes.json
  def create
    @user_wish = UserWish.new(params[:user_wish])

    respond_to do |format|
      if @user_wish.save
        format.html { redirect_to @user_wish, notice: 'User wish was successfully created.' }
        format.json { render json: @user_wish, status: :created, location: @user_wish }
      else
        format.html { render action: "new" }
        format.json { render json: @user_wish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_wishes/1
  # PUT /user_wishes/1.json
  def update
    @user_wish = UserWish.find(params[:id])

    respond_to do |format|
      if @user_wish.update_attributes(params[:user_wish])
        format.html { redirect_to @user_wish, notice: 'User wish was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_wish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_wishes/1
  # DELETE /user_wishes/1.json
  def destroy
    @user_wish = UserWish.find(params[:id])
    @user_wish.destroy

    respond_to do |format|
      format.html { redirect_to user_wishes_url }
      format.json { head :ok }
    end
  end
end

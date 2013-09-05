class SesionsController < ApplicationController
  # GET /sesions
  # GET /sesions.json
  def index
    @sesions = Sesion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sesions }
    end
  end

  # GET /sesions/1
  # GET /sesions/1.json
  def show
    @sesion = Sesion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sesion }
    end
  end

  # GET /sesions/new
  # GET /sesions/new.json
  def new
    @sesion = Sesion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sesion }
    end
  end

  # GET /sesions/1/edit
  def edit
    @sesion = Sesion.find(params[:id])
  end

  # POST /sesions
  # POST /sesions.json
  def create
    @sesion = Sesion.new(params[:sesion])

    respond_to do |format|
      if @sesion.save
        format.html { redirect_to @sesion, notice: 'Sesion was successfully created.' }
        format.json { render json: @sesion, status: :created, location: @sesion }
      else
        format.html { render action: "new" }
        format.json { render json: @sesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sesions/1
  # PUT /sesions/1.json
  def update
    @sesion = Sesion.find(params[:id])

    respond_to do |format|
      if @sesion.update_attributes(params[:sesion])
        format.html { redirect_to @sesion, notice: 'Sesion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sesions/1
  # DELETE /sesions/1.json
  def destroy
    @sesion = Sesion.find(params[:id])
    @sesion.destroy

    respond_to do |format|
      format.html { redirect_to sesions_url }
      format.json { head :no_content }
    end
  end
end

class PatologiaController < ApplicationController
  # GET /patologia
  # GET /patologia.json
  def index
    @patologia = Patologium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patologia }
    end
  end

  # GET /patologia/1
  # GET /patologia/1.json
  def show
    @patologium = Patologium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patologium }
    end
  end

  # GET /patologia/new
  # GET /patologia/new.json
  def new
    @patologium = Patologium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @patologium }
    end
  end

  # GET /patologia/1/edit
  def edit
    @patologium = Patologium.find(params[:id])
  end

  # POST /patologia
  # POST /patologia.json
  def create
    @patologium = Patologium.new(params[:patologium])

    respond_to do |format|
      if @patologium.save
        format.html { redirect_to @patologium, notice: 'Patologium was successfully created.' }
        format.json { render json: @patologium, status: :created, location: @patologium }
      else
        format.html { render action: "new" }
        format.json { render json: @patologium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /patologia/1
  # PUT /patologia/1.json
  def update
    @patologium = Patologium.find(params[:id])

    respond_to do |format|
      if @patologium.update_attributes(params[:patologium])
        format.html { redirect_to @patologium, notice: 'Patologium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @patologium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patologia/1
  # DELETE /patologia/1.json
  def destroy
    @patologium = Patologium.find(params[:id])
    @patologium.destroy

    respond_to do |format|
      format.html { redirect_to patologia_url }
      format.json { head :no_content }
    end
  end
end

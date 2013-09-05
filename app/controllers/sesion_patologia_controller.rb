class SesionPatologiaController < ApplicationController
  # GET /sesion_patologia
  # GET /sesion_patologia.json
  def index
    @sesion_patologia = SesionPatologium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sesion_patologia }
    end
  end

  # GET /sesion_patologia/1
  # GET /sesion_patologia/1.json
  def show
    @sesion_patologium = SesionPatologium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sesion_patologium }
    end
  end

  # GET /sesion_patologia/new
  # GET /sesion_patologia/new.json
  def new
    @sesion_patologium = SesionPatologium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sesion_patologium }
    end
  end

  # GET /sesion_patologia/1/edit
  def edit
    @sesion_patologium = SesionPatologium.find(params[:id])
  end

  # POST /sesion_patologia
  # POST /sesion_patologia.json
  def create
    @sesion_patologium = SesionPatologium.new(params[:sesion_patologium])

    respond_to do |format|
      if @sesion_patologium.save
        format.html { redirect_to @sesion_patologium, notice: 'Sesion patologium was successfully created.' }
        format.json { render json: @sesion_patologium, status: :created, location: @sesion_patologium }
      else
        format.html { render action: "new" }
        format.json { render json: @sesion_patologium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sesion_patologia/1
  # PUT /sesion_patologia/1.json
  def update
    @sesion_patologium = SesionPatologium.find(params[:id])

    respond_to do |format|
      if @sesion_patologium.update_attributes(params[:sesion_patologium])
        format.html { redirect_to @sesion_patologium, notice: 'Sesion patologium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sesion_patologium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sesion_patologia/1
  # DELETE /sesion_patologia/1.json
  def destroy
    @sesion_patologium = SesionPatologium.find(params[:id])
    @sesion_patologium.destroy

    respond_to do |format|
      format.html { redirect_to sesion_patologia_url }
      format.json { head :no_content }
    end
  end
end

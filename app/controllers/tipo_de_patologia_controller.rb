class TipoDePatologiaController < ApplicationController
  # GET /tipo_de_patologia
  # GET /tipo_de_patologia.json
  def index
    @tipo_de_patologia = TipoDePatologium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_de_patologia }
    end
  end

  # GET /tipo_de_patologia/1
  # GET /tipo_de_patologia/1.json
  def show
    @tipo_de_patologium = TipoDePatologium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_de_patologium }
    end
  end

  # GET /tipo_de_patologia/new
  # GET /tipo_de_patologia/new.json
  def new
    @tipo_de_patologium = TipoDePatologium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_de_patologium }
    end
  end

  # GET /tipo_de_patologia/1/edit
  def edit
    @tipo_de_patologium = TipoDePatologium.find(params[:id])
  end

  # POST /tipo_de_patologia
  # POST /tipo_de_patologia.json
  def create
    @tipo_de_patologium = TipoDePatologium.new(params[:tipo_de_patologium])

    respond_to do |format|
      if @tipo_de_patologium.save
        format.html { redirect_to @tipo_de_patologium, notice: 'Tipo de patologium was successfully created.' }
        format.json { render json: @tipo_de_patologium, status: :created, location: @tipo_de_patologium }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_de_patologium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_de_patologia/1
  # PUT /tipo_de_patologia/1.json
  def update
    @tipo_de_patologium = TipoDePatologium.find(params[:id])

    respond_to do |format|
      if @tipo_de_patologium.update_attributes(params[:tipo_de_patologium])
        format.html { redirect_to @tipo_de_patologium, notice: 'Tipo de patologium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_de_patologium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_de_patologia/1
  # DELETE /tipo_de_patologia/1.json
  def destroy
    @tipo_de_patologium = TipoDePatologium.find(params[:id])
    @tipo_de_patologium.destroy

    respond_to do |format|
      format.html { redirect_to tipo_de_patologia_url }
      format.json { head :no_content }
    end
  end
end

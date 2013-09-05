class PacienteTurnosController < ApplicationController
  # GET /paciente_turnos
  # GET /paciente_turnos.json
  def index
    @paciente_turnos = PacienteTurno.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @paciente_turnos }
    end
  end

  # GET /paciente_turnos/1
  # GET /paciente_turnos/1.json
  def show
    @paciente_turno = PacienteTurno.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @paciente_turno }
    end
  end

  # GET /paciente_turnos/new
  # GET /paciente_turnos/new.json
  def new
    @paciente_turno = PacienteTurno.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @paciente_turno }
    end
  end

  # GET /paciente_turnos/1/edit
  def edit
    @paciente_turno = PacienteTurno.find(params[:id])
  end

  # POST /paciente_turnos
  # POST /paciente_turnos.json
  def create
    @paciente_turno = PacienteTurno.new(params[:paciente_turno])

    respond_to do |format|
      if @paciente_turno.save
        format.html { redirect_to @paciente_turno, notice: 'Paciente turno was successfully created.' }
        format.json { render json: @paciente_turno, status: :created, location: @paciente_turno }
      else
        format.html { render action: "new" }
        format.json { render json: @paciente_turno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /paciente_turnos/1
  # PUT /paciente_turnos/1.json
  def update
    @paciente_turno = PacienteTurno.find(params[:id])

    respond_to do |format|
      if @paciente_turno.update_attributes(params[:paciente_turno])
        format.html { redirect_to @paciente_turno, notice: 'Paciente turno was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @paciente_turno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paciente_turnos/1
  # DELETE /paciente_turnos/1.json
  def destroy
    @paciente_turno = PacienteTurno.find(params[:id])
    @paciente_turno.destroy

    respond_to do |format|
      format.html { redirect_to paciente_turnos_url }
      format.json { head :no_content }
    end
  end
end

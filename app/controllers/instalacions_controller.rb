class InstalacionsController < ApplicationController
  # GET /instalacions
  # GET /instalacions.json
  def index
    @instalacions = Instalacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instalacions }
    end
  end

  # GET /instalacions/1
  # GET /instalacions/1.json
  def show
    @instalacion = Instalacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instalacion }
    end
  end

  # GET /instalacions/new
  # GET /instalacions/new.json
  def new
    @instalacion = Instalacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instalacion }
    end
  end

  # GET /instalacions/1/edit
  def edit
    @instalacion = Instalacion.find(params[:id])
  end

  # POST /instalacions
  # POST /instalacions.json
  def create
    @instalacion = Instalacion.new(params[:instalacion])

    respond_to do |format|
      if @instalacion.save
        format.html { redirect_to @instalacion, notice: 'Instalacion was successfully created.' }
        format.json { render json: @instalacion, status: :created, location: @instalacion }
      else
        format.html { render action: "new" }
        format.json { render json: @instalacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instalacions/1
  # PUT /instalacions/1.json
  def update
    @instalacion = Instalacion.find(params[:id])

    respond_to do |format|
      if @instalacion.update_attributes(params[:instalacion])
        format.html { redirect_to @instalacion, notice: 'Instalacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instalacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instalacions/1
  # DELETE /instalacions/1.json
  def destroy
    @instalacion = Instalacion.find(params[:id])
    @instalacion.destroy

    respond_to do |format|
      format.html { redirect_to instalacions_url }
      format.json { head :no_content }
    end
  end
end

class RecintosController < ApplicationController
  # GET /recintos
  # GET /recintos.json
  def index
    @recintos = Recinto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recintos }
    end
  end

  # GET /recintos/1
  # GET /recintos/1.json
  def show
    @recinto = Recinto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recinto }
    end
  end

  # GET /recintos/new
  # GET /recintos/new.json
  def new
    @recinto = Recinto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recinto }
    end
  end

  # GET /recintos/1/edit
  def edit
    @recinto = Recinto.find(params[:id])
  end

  # POST /recintos
  # POST /recintos.json
  def create
    @recinto = Recinto.new(params[:recinto])

    respond_to do |format|
      if @recinto.save
        format.html { redirect_to @recinto, notice: 'Recinto was successfully created.' }
        format.json { render json: @recinto, status: :created, location: @recinto }
      else
        format.html { render action: "new" }
        format.json { render json: @recinto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recintos/1
  # PUT /recintos/1.json
  def update
    @recinto = Recinto.find(params[:id])

    respond_to do |format|
      if @recinto.update_attributes(params[:recinto])
        format.html { redirect_to @recinto, notice: 'Recinto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recinto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recintos/1
  # DELETE /recintos/1.json
  def destroy
    @recinto = Recinto.find(params[:id])
    @recinto.destroy

    respond_to do |format|
      format.html { redirect_to recintos_url }
      format.json { head :no_content }
    end
  end
end

class CircuitsController < ApplicationController
  # GET /circuits
  # GET /circuits.json
  def index
    @circuits = Circuit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @circuits }
    end
  end

  # GET /circuits/1
  # GET /circuits/1.json
  def show
    @circuit = Circuit.find(params[:id])
    
    @scores = @circuit.scores.sort{|a,b| a.position <=> b.position}
    @riders = @scores.map{|punteggio| punteggio.rider}

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @circuit }
    end
  end

  # GET /circuits/new
  # GET /circuits/new.json
  def new
    @circuit = Circuit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @circuit }
    end
  end

  # GET /circuits/1/edit
  def edit
    @circuit = Circuit.find(params[:id])
  end

  # POST /circuits
  # POST /circuits.json
  def create
    @circuit = Circuit.new(params[:circuit])

    respond_to do |format|
      if @circuit.save
        format.html { redirect_to @circuit, notice: 'Circuit was successfully created.' }
        format.json { render json: @circuit, status: :created, location: @circuit }
      else
        format.html { render action: "new" }
        format.json { render json: @circuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /circuits/1
  # PUT /circuits/1.json
  def update
    @circuit = Circuit.find(params[:id])

    respond_to do |format|
      if @circuit.update_attributes(params[:circuit])
        format.html { redirect_to @circuit, notice: 'Circuit was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @circuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /circuits/1
  # DELETE /circuits/1.json
  def destroy
    @circuit = Circuit.find(params[:id])
    @circuit.destroy

    respond_to do |format|
      format.html { redirect_to circuits_url }
      format.json { head :ok }
    end
  end
end

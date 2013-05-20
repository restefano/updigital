class BrothersController < ApplicationController
  # GET /brothers
  # GET /brothers.json
  def index
    @brothers = Brother.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @brothers }
    end
  end

  # GET /brothers/1
  # GET /brothers/1.json
  def show
    @brother = Brother.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @brother }
    end
  end

  # GET /brothers/new
  # GET /brothers/new.json
  def new
    @brother = Brother.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @brother }
    end
  end

  # GET /brothers/1/edit
  def edit
    @brother = Brother.find(params[:id])
  end

  # POST /brothers
  # POST /brothers.json
  def create
    @brother = Brother.new(params[:brother])

    respond_to do |format|
      if @brother.save
        format.html { redirect_to @brother, notice: 'Cadastro atualizado com sucesso.' }
        format.json { render json: @brother, status: :created, location: @brother }
      else
        format.html { render action: "new" }
        format.json { render json: @brother.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /brothers/1
  # PUT /brothers/1.json
  def update
    @brother = Brother.find(params[:id])

    respond_to do |format|
      if @brother.update_attributes(params[:brother])
        format.html { redirect_to @brother, notice: 'Cadastro atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @brother.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brothers/1
  # DELETE /brothers/1.json
  def destroy
    @brother = Brother.find(params[:id])
    @brother.destroy

    respond_to do |format|
      format.html { redirect_to brothers_url }
      format.json { head :no_content }
    end
  end
end

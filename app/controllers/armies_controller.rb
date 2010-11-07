class ArmiesController < ApplicationController
  # GET /armies
  # GET /armies.xml
  def index
    @armies = Army.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @armies }
    end
  end

  # GET /armies/1
  # GET /armies/1.xml
  def show
    @army = Army.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @army }
    end
  end

  # GET /armies/new
  # GET /armies/new.xml
  def new
    @army = Army.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @army }
    end
  end

  # GET /armies/1/edit
  def edit
    @army = Army.find(params[:id])
  end

  # POST /armies
  # POST /armies.xml
  def create
    @army = Army.new(params[:army])

    respond_to do |format|
      if @army.save
        format.html { redirect_to(@army, :notice => 'Army was successfully created.') }
        format.xml  { render :xml => @army, :status => :created, :location => @army }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @army.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /armies/1
  # PUT /armies/1.xml
  def update
    @army = Army.find(params[:id])

    respond_to do |format|
      if @army.update_attributes(params[:army])
        format.html { redirect_to(@army, :notice => 'Army was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @army.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /armies/1
  # DELETE /armies/1.xml
  def destroy
    @army = Army.find(params[:id])
    @army.destroy

    respond_to do |format|
      format.html { redirect_to(armies_url, :notice => 'Army was successfully deleted.') }
      format.xml  { head :ok }
    end
  end
end

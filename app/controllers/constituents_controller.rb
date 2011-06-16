class ConstituentsController < ApplicationController
  # GET /constituents
  # GET /constituents.xml
  def index
    @constituents = Constituent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @constituents }
    end
  end

  # GET /constituents/1
  # GET /constituents/1.xml
  def show
    @constituent = Constituent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @constituent }
    end
  end

  # GET /constituents/new
  # GET /constituents/new.xml
  def new
    @constituent = Constituent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @constituent }
    end
  end

  # GET /constituents/1/edit
  def edit
    @constituent = Constituent.find(params[:id])
  end

  # POST /constituents
  # POST /constituents.xml
  def create
    @constituent = Constituent.new(params[:constituent])

    respond_to do |format|
      if @constituent.save
        format.html { redirect_to(@constituent, :notice => 'Constituent was successfully created.') }
        format.xml  { render :xml => @constituent, :status => :created, :location => @constituent }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @constituent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /constituents/1
  # PUT /constituents/1.xml
  def update
    @constituent = Constituent.find(params[:id])

    respond_to do |format|
      if @constituent.update_attributes(params[:constituent])
        format.html { redirect_to(@constituent, :notice => 'Constituent was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @constituent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /constituents/1
  # DELETE /constituents/1.xml
  def destroy
    @constituent = Constituent.find(params[:id])
    @constituent.destroy

    respond_to do |format|
      format.html { redirect_to(constituents_url) }
      format.xml  { head :ok }
    end
  end
end

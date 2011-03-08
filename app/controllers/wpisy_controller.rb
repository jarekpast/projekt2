class WpisyController < ApplicationController
  # GET /wpisy
  # GET /wpisy.xml
  def index
    @wpisy = Wpis.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wpisy }
    end
  end

  # GET /wpisy/1
  # GET /wpisy/1.xml
  def show
    @wpis = Wpis.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wpis }
    end
  end

  # GET /wpisy/new
  # GET /wpisy/new.xml
  def new
    @wpis = Wpis.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @wpis }
    end
  end

  # GET /wpisy/1/edit
  def edit
    @wpis = Wpis.find(params[:id])
  end

  # POST /wpisy
  # POST /wpisy.xml
  def create
    @wpis = Wpis.new(params[:wpis])
    @wpis.data = Date.today
    respond_to do |format|
      if @wpis.save
        flash[:notice] = 'Wpis was successfully created.'
        format.html { redirect_to(@wpis) }
        format.xml  { render :xml => @wpis, :status => :created, :location => @wpis }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @wpis.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wpisy/1
  # PUT /wpisy/1.xml
  def update
    @wpis = Wpis.find(params[:id])

    respond_to do |format|
      if @wpis.update_attributes(params[:wpis])
        flash[:notice] = 'Wpis was successfully updated.'
        format.html { redirect_to(@wpis) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @wpis.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wpisy/1
  # DELETE /wpisy/1.xml
  def destroy
    @wpis = Wpis.find(params[:id])
    @wpis.destroy

    respond_to do |format|
      format.html { redirect_to(wpisy_url) }
      format.xml  { head :ok }
    end
  end
end

class OilVendorsController < ApplicationController
  layout 'default'
  # GET /oil_vendors
  # GET /oil_vendors.xml
  def index
    @oil_vendors = OilVendor.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @oil_vendors }
    end
  end

  # GET /oil_vendors/1
  # GET /oil_vendors/1.xml
  def show
    @oil_vendor = OilVendor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @oil_vendor }
    end
  end

  # GET /oil_vendors/new
  # GET /oil_vendors/new.xml
  def new
    @oil_vendor = OilVendor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @oil_vendor }
    end
  end

  # GET /oil_vendors/1/edit
  def edit
    @oil_vendor = OilVendor.find(params[:id])
  end

  # POST /oil_vendors
  # POST /oil_vendors.xml
  def create
    @oil_vendor = OilVendor.new(params[:oil_vendor])

    respond_to do |format|
      if @oil_vendor.save
        flash[:notice] = 'OilVendor was successfully created.'
        format.html { redirect_to(@oil_vendor) }
        format.xml  { render :xml => @oil_vendor, :status => :created, :location => @oil_vendor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @oil_vendor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /oil_vendors/1
  # PUT /oil_vendors/1.xml
  def update
    @oil_vendor = OilVendor.find(params[:id])

    respond_to do |format|
      if @oil_vendor.update_attributes(params[:oil_vendor])
        flash[:notice] = 'OilVendor was successfully updated.'
        format.html { redirect_to(@oil_vendor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @oil_vendor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /oil_vendors/1
  # DELETE /oil_vendors/1.xml
  def destroy
    @oil_vendor = OilVendor.find(params[:id])
    @oil_vendor.destroy

    respond_to do |format|
      format.html { redirect_to(oil_vendors_url) }
      format.xml  { head :ok }
    end
  end
end

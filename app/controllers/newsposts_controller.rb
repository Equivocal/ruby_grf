class NewspostsController < ApplicationController
  # GET /newsposts
  # GET /newsposts.xml
  def index
    @newsposts = Newspost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @newsposts }
    end
  end

  # GET /newsposts/1
  # GET /newsposts/1.xml
  def show
    @newspost = Newspost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @newspost }
    end
  end

  # GET /newsposts/new
  # GET /newsposts/new.xml
  def new
    @newspost = Newspost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @newspost }
    end
  end

  # GET /newsposts/1/edit
  def edit
    @newspost = Newspost.find(params[:id])
  end

  # POST /newsposts
  # POST /newsposts.xml
  def create
    @newspost = Newspost.new(params[:newspost])

    respond_to do |format|
      if @newspost.save
        format.html { redirect_to(@newspost, :notice => 'Newspost was successfully created.') }
        format.xml  { render :xml => @newspost, :status => :created, :location => @newspost }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @newspost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /newsposts/1
  # PUT /newsposts/1.xml
  def update
    @newspost = Newspost.find(params[:id])

    respond_to do |format|
      if @newspost.update_attributes(params[:newspost])
        format.html { redirect_to(@newspost, :notice => 'Newspost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @newspost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /newsposts/1
  # DELETE /newsposts/1.xml
  def destroy
    @newspost = Newspost.find(params[:id])
    @newspost.destroy

    respond_to do |format|
      format.html { redirect_to(newsposts_url) }
      format.xml  { head :ok }
    end
  end
end

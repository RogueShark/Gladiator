class HumansController < ApplicationController
  # GET /humans
  # GET /humans.xml
  def index
    @humans = Human.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @humans }
    end
  end


	# GET /fighter/1
  # GET /fighter/1.xml
  def fighter
    @human = Human.find(params[:id])

    respond_to do |format|
      format.html # fighter.html.erb
      format.xml  { render :xml => @human }
    end
  end

  # GET /humans/1
  # GET /humans/1.xml
  def show
    @human = Human.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @human }
    end
  end

  # GET /humans/new
  # GET /humans/new.xml
  def new
    @human = Human.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @human }
    end
  end

  # GET /humans/1/edit
  def edit
    @human = Human.find(params[:id])
  end

  # POST /humans
  # POST /humans.xml
  def create
    @human = Human.new(params[:human])

    respond_to do |format|
      if @human.save
        format.html { redirect_to(@human, :notice => 'Human was successfully created.') }
        format.xml  { render :xml => @human, :status => :created, :location => @human }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @human.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /humans/1
  # PUT /humans/1.xml
  def update
    @human = Human.find(params[:id])

    respond_to do |format|
      if @human.update_attributes(params[:human])
        format.html { redirect_to(@human, :notice => 'Human was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @human.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /humans/1
  # DELETE /humans/1.xml
  def destroy
    @human = Human.find(params[:id])
    @human.destroy

    respond_to do |format|
      format.html { redirect_to(humans_url) }
      format.xml  { head :ok }
    end
  end
end

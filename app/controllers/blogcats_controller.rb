class BlogcatsController < ApplicationController
  
  def new
     @cat = Blogcat.new
  end

  def create
    @cat = Blogcat.new(params[:blogcat])

    respond_to do |format|
      if @cat.save
        format.html { redirect_to adm_path, :notice => 'Category was successfully created.' }
        format.json { render :json => @cat, :status => :created, :location => @cat }
      else
        format.html { render :action => "new" }
        format.json { render :json => @cat.errors, :status => :unprocessable_entity }
      end
    end
  end

  def index
    @cats = Blogcat.all

  end

  def destroy
    @cat = Blogcat.find(params[:id])
    @cat.destroy

    respond_to do |format|
      format.html { redirect_to blogcats_url, :notice => 'Category deleted! :)' }
      format.json { head :ok }
    end
  end

  def edit
    @cat = Blogcat.find(params[:id])
  end
  
    def update
    @cat = Blogcat.find(params[:id])

    respond_to do |format|
      if @cat.update_attributes(params[:blogcat])
        format.html { redirect_to adm_path, :notice => 'Category was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @cat.errors, :status => :unprocessable_entity }
      end
    end
  end

end

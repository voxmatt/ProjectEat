class ListsController < ApplicationController
  skip_before_filter :authorize
  
  # GET /lists
  # GET /lists.json
  def index
    @lists = List.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lists }
    end
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
    begin    
      @list = List.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error "Attempt to access invalid list #{params[:id]}"
      redirect_to guide_url, :notice => 'Invalid List'
    else
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @list }
      end
    end
  end

  # GET /lists/new
  # GET /lists/new.json
  def new
    @list = List.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @list }
    end
  end

  # GET /lists/1/edit
  def edit
    @list = List.find(params[:id])
  end

  # POST /lists
  # POST /lists.json
  def create
    @list = List.new(params[:list])

    respond_to do |format|
      if @list.save
        format.html { redirect_to @list, notice: 'List was successfully created.' }
        format.json { render json: @list, status: :created, location: @list }
      else
        format.html { render action: "new" }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lists/1
  # PUT /lists/1.json
  def update
    @list = List.find(params[:id])

    respond_to do |format|
      if @list.update_attributes(params[:list])
        format.html { redirect_to @list, notice: 'List was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list = current_list
    @list.destroy
    session[:list_id] = nil

    respond_to do |format|
      format.html { redirect_to(guide_url) }
      format.json { head :ok }
    end
  end
end

class AppsController < ApplicationController

  respond_to :json, :xml

  def new
  end
  
  def pull
  	@app = APPS.shift
  	p @app
  	p "POP" 
  	respond_to do |format|
   	  format.json { render :json => @app.to_json }
    end  
  end

  def push
  	@app = params[:app]
  	p @app
  	APPS << @app
  	p APPS
  	p "PAP"
  	respond_to do |format|
   	  format.json { render :json => APPS.to_json }
    end 
    return APPS.to_json
  end

end
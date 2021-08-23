class ClientsController < ApplicationController
	before_action :set_client,only:[:show,:edit,:update,:destroy]

	def index
		@clients=Client.all
	end

	def new
		@client=Client.new
		
	end

	def create
		@client=Client.new(client_params)
		respond_to do |format|
			if @client.save
				format.html { redirect_to @client, notice: 'client was successfully created.' }
			else
				format.html { render :new }
			end
		end
	end
	
	def show
		
	end

	def edit
		@client = Client.find(params[:id])

	end 

	def update
		respond_to do |format|
			if @client.update(client_params)
				format.html { redirect_to @client, notice: 'client was successfully updated.' }
			else
				format.html { render :edit }
			end
		end

	end

	def destroy
		@client.destroy
		respond_to do |format|
			format.html { redirect_to client_url, notice: 'client was successfully destroyed.' }
		end

	end


	private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
    	@client = Client.find(params[:id])
    end

    def client_params
    	params.require(:client).permit(:name,:user_name,:password,:additional_info)
    end


end

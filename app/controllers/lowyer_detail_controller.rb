class LowyerDetailController < ApplicationController
     layout 'lowyer_layout'
	def index
    @lowyer_details = LowyerDetail.order('lowyer').paginate(:page => params[:page],:per_page => 20)
    @lowyer_city= LowyerDetail.order('city').select('distinct city')
     @service=LowyerServiceDetail.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lower_details }
    end
  end
 
   def load_city
   	 @lowyer_details = params[:location_id].blank? ? LowyerDetail.order('lowyer') : LowyerDetail.where(:city=>params[:location_id]).order('lowyer')#.paginate(:page => params[:page],:per_page => 20)
      @ser = params[:service_id] 
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lower_details }
    end
   end
end

class LowyerDetail < ActiveRecord::Base

    has_many :lowyer_service_details
	def LowyerDetail.default_migration
	 filename = "#{Rails.root}/lib/csv/Lawyers_City_List_new3.csv"

     file=File.new(filename,"r")
     while (line = file.gets)
       columns = line.split("$") 
      
      self.create(:lowyer_code=>columns[0].to_s.chomp.strip.squeeze(" "),
      	:lowyer=>columns[1].to_s.chomp.strip.squeeze(" "),
      	:experience=>columns[2].to_i,
      	:city=>columns[3].to_s.chomp.strip.squeeze(" "),
      	:rate=>columns[4].to_f)
      end
  end

end

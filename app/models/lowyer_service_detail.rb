class LowyerServiceDetail < ActiveRecord::Base
	 belongs_to :lowyer_detail
	def LowyerServiceDetail.default_migration
	 filename = "#{Rails.root}/lib/csv/Lawyer_Service_List_new4.csv"

     file=File.new(filename,"r")
     while (line = file.gets)
       columns = line.split("$") 
      ld=LowyerDetail.find_by_lowyer_code(columns[0].to_s.chomp.strip.squeeze(" "))
       self.create(:lowyer_code=>columns[0].to_s.chomp.strip.squeeze(" "),
      	:service_code=>columns[1].to_s.chomp.strip.squeeze(" "),
      	:service_name=>columns[2].to_s.chomp.strip.squeeze(" "),
      	:charges=>columns[3].to_f,
      	:lowyer_detail_id=>ld.id)
      end
  end
end

namespace :import do

  desc "import shelter_orgs from CSV"
  task shelter_org: :environment do
	require 'csv'
	CSV.foreach('tmp/Shelters.csv', headers: true) do |row|
  	  shelter_org = ShelterOrg.find_or_create_by(name: row['name'])
  	  shelter_org.update_attributes(row.to_h)
	end
  end

end

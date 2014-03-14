require "#{Rails.root}/lib/import/import_energy"

namespace :import do
  desc "Import the state energy data"
  task energy: :environment do
  	ImportEnergy.import
  end

end

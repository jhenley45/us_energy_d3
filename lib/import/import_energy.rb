require 'csv'

class ImportEnergy

	def self.import
		data = CSV.read("#{Rails.root}/data/energy_data.csv")

		data.each do |d|
			row = JSON.parse(d.first)
			state = (/(?<!\w)[a-zA-Z]{2}(?!\w)/.match(row["series_id"])).to_s
			name = row["name"]
			units = row["units"]
			start_date = row["start"].to_i
			end_date = row["end"].to_i

			Study.transaction do
				new_study = Study.create!(name: name, state: state, units: units,
					start_date: start_date, end_date: end_date)

				row["data"].each do |v|
					new_study.study_facts.create!(year: v[0].to_i, value: v[1])
				end
			end

		end

		# row = JSON.parse(first.first)
		# state = (/(?<!\w)[a-zA-Z]{2}(?!\w)/.match(row["series_id"])).to_s
		# name = row["name"]
		# start_date = row["start"].to_i
		# end_date = row["end"].to_i
		# binding.pry

		#data = JSON.parse(data.first)
	end

end

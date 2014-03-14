class StudiesController < ApplicationController

	def index

		study = Study.find_by(name: "Total primary energy and electricity consumed by the end-use sectors, Alabama")
		data = study.study_facts
		binding.pry

		respond_to do |format|
      format.html
      format.json {render json: study.to_json(:include => :study_facts) }
	  end

	end

end

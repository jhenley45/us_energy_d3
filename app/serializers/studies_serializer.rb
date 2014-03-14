class StudySerializer < ActiveModel::Serializer
  attributes :name, :state, :units, :start_date, :end_date, :study_facts
end

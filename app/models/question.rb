# module Surveys
	class Question < ApplicationRecord
		has_many :answers, dependent: :destroy#, class_name: 'Surveys::Answer'
		belongs_to :survey, dependent: :destroy

		validates :content, presence: true
		
		has_rich_text :moderation

		acts_as_list scope: :survey
		scope :by_survey, -> (survey) { joins(:survey).where(surveys: {id: survey}) }
		
		def next_question
			Question.by_survey(self.survey.id).where(position: self.position + 1).first
		end

		def previous_question
			Question.by_survey(self.survey.id).where(position: self.position - 1).first
		end

		def question_type?
			case self.question_type
			when "text" 
				:text
			when "integer"
				:integer
			when "boolean"
				:boolean
			# when "radio_buttons"
				# :radio_buttons
			# when "check_boxes"
				# :check_boxes
			# when "select"
				# :select
			# when "file"
				# :file
			# when "date"
				# :date
			# when "password"
				# :password
			else
				:string 
			end
		end

		QUESTION_TYPES = [ "text", "string", "integer", "boolean"]#"radio_buttons", "check_boxes", "select",	"file", "date", "password" ]
	end
# end
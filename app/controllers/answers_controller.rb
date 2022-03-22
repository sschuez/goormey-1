# module Surveys
	class AnswersController < ApplicationController
		before_action :set_question_answer, only: [ :create, :update ]
		
		def create
			@answer = Answer.new(answer_params)
			@answer.question = @question
			@answer.submission = @submission
			@survey = @submission.survey
			authorize @answer
			if @answer.save
				final_question?
			else
				render 'questions/show'
			end
		end
		
		def update
			@answer = @submission.answers.find_by(question: @question)
			@survey = @submission.survey
			authorize @answer
			if @answer.update(answer_params)
				final_question?
			else
				render 'questions/show'
			end
		end

		private

		def final_question?
			@next_question = @answer.question.next_question
			if @next_question
				redirect_to survey_submission_question_path(@survey, @submission, @next_question)
			else
				redirect_to survey_submission_path(@survey, @submission)
			end
		end

		def set_question_answer
			@question = Question.find(params[:question_id])
			@submission = Submission.find(params[:submission_id])
		end

		def answer_params
			params.require(:answer).permit(:content)
		end
	end
# end
module Surveys
	class AnswersController < ApplicationController
		before_action :set_question_answer, only: [ :create, :update ]
		
		def create
			@answer = Answer.new(answer_params)
			@answer.question = @question
			@answer.submission = @submission
			if @answer.save
				final_question?
			else
				render 'questions/show'
			end
		end

		def update
			@answer = @submission.answers.find_by(question: @question)
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
				redirect_to submission_question_path(@submission, @next_question)
			else
				redirect_to submission_path(@submission)
			end
		end

		def set_question_answer
			@question = Question.find(params[:question_id])
			@submission = Submission.find(params[:submission_id])
		end

		def answer_params
			params.require(:surveys_answer).permit(:content)
		end
	end
end
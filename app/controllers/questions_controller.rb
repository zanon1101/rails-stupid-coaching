class QuestionsController < ApplicationController
    def ask
    end

    def answer
        @answers = ["I don't care, get dressed and go to work!",
                     "Silly question, get dressed and go to work!",
                     "Great!"
                     ]
        # raise
        if params[:question] == 'I am going to work'
            @answer = @answers[2]
        elsif params[:question].include?('?')
            @answer = @answers[1]
        else
            @answer = @answers[0]
        end
    end
end

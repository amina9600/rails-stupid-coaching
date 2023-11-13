class QuestionsController < ApplicationController
  def ask; end

  def answer
    # @question - name of your variable - you can call it anything
    # params - name of the hash - you have to call it params
    # :question - is the key in your params hash.
    # we're taking the value that the user inputs in the form through the params hash and storing in a variable
    @question = params[:question]
    @answer = if @question == 'I am going to work'
                'Great!'
              elsif @question[-1] == '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end

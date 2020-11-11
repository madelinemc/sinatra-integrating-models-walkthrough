require_relative 'config/environment'
require_relative 'models/text_analyzer.rb' # connecting the TextAnalyzer model to the controller. gives ability to reference TextAnalyzer calss and invoke its new method.

class App < Sinatra::Base
  get '/' do
    erb :index
  end
  #renders the index page

  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text]) #taking data from params and feeding it into a new instance of TextAnalyzer class.
    # the instance of TextAnalyzer is saved to the instance variable @analyzed_text which means it and its methods from results.erb
    erb :results
  end
  #receives the form data through params and renders the results page.

end

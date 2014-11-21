get '/ipsum' do
  erb :my_view
end
post '/words' do
  Dinosaurus.configure do |config|
    config.api_key = 'a9d6557e423f922b9e2bfa4a62fddb93'
  end
  @topic = params[:topic]
  topic = params['topic']
  @words = Dinosaurus.lookup(topic)

  @content = ' '

  params[:number].to_i.times do
    @content += '<p>&nbsp;'
    params[:snumber].to_i.times do
      (rand(20)).times do
        @content += ' ' + @words.sample
      end
      @content += '.'
    end
    @content += '</p>'
  end
  erb :words
end

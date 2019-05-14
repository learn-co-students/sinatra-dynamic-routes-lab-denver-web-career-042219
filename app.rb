require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    backwards = @name.reverse

    backwards
  end

  get "/square/:number" do
    @number = params[:number].to_i
    square = @number.pow(2)

    "#{square}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    phrase_array = []
    @number.times {phrase_array << @phrase}
    phrase_string = phrase_array.join(" ")

    phrase_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    sentence = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

    sentence
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @operation
      when "add"
        (@num1 + @num2).to_s
      when "subtract"
        (@num1 - @num2).to_s
      when "multiply"
        (@num1 * @num2).to_s
      when "divide"
        (@num1 / @num2).to_s
    end
  end

end

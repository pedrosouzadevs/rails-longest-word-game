require 'open-uri'
require 'json'

class GamesController < ApplicationController
  @letters = []
  3.times { @letters << %w[a e i o u].sample.upcase }
  7.times { @letters << ('a'..'z').to_a.sample.upcase }
  def new
    @letters
  end

  def score
    word = params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{word}"
    word_serialized = URI.open(url).read
    word = JSON.parse(word_serialized)
    @word.each {|element| h[element] = i }
    @results = if params[:word].empty? || params[:word].length <= 1
      puts 'this word is not valid'
    elsif word[:found] == false
      puts 'this word is not a english one'
    else
      puts
    end
  end
end

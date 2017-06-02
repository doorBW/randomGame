class GameController < ApplicationController
  def index
  end
  
  def result
    @result = params[:exampleRadios]
    drama = ['까마귀상가','오구실','바나나액츄얼리','연플리']
    music = ['레드벨벳','걸스데이','박효신','다이나믹듀오']
    learn = ['어쩌다어른','김미경강사','말하는대로']
    game = ['롤','오버워치','스타크래프트','하스스톤']
    case @result
    when "단편드라마"
      @video = drama.sample(1)
    when "뮤직비디오" 
      @video = music.sample(1)
    when "교훈" 
      @video = learn.sample(1)
    when "게임"   
      @video = game.sample(1)
    end
    
  end
end

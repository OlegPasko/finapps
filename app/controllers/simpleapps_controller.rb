# -*- encoding : utf-8 -*-
class SimpleappsController < ApplicationController
  def kubik

  end

  def decision

    decmas = ["Мне кажется — «да»","Бесспорно","Решено","Вероятнее всего","Хорошие перспективы","Знаки говорят — «да»","Никаких сомнений","Да","Определённо да","Можешь положиться","Пока не ясно, попробуй снова","Спроси позже","Лучше не рассказывать","Сейчас нельзя предсказать","Сконцентрируйся и спроси опять","Даже не думай","Мой ответ — «нет»","По моим данным — «нет»","Перспективы не очень хорошие","Весьма сомнительно"]
    elements = decmas.count
  @decision = decmas[rand(elements)]  
  end

  def happydays

  
  end
  
    def capitalcost

    
      presentprice = 10000 + rand(500)*10
      averageprof = 10 + rand(5)
      afv = presentprice + presentprice * averageprof/100
      @presentprice = presentprice.to_s
      @averageprof = averageprof.to_s

    sravnenie = 22
    @sravnenie = sravnenie
    @sravnenietimes = (1..sravnenie).to_a.join(", ")#для подписи данных, кол-во сравнений по порядку
    fvtimes = []
    sravnenie.times do
      fvtimes.push afv
    end
    @fvtimes = fvtimes.join(", ")
    
    devimas = []
    newvalues = [] #массив с новыми значениями
    newvaluesdev = []
      sravnenie.times do
        #определяем исход
        ishod = rand(2)
        
        #определяем отклонение
        rando = rand(11)
        deviation = (rando**2)
        
          if ishod == 0
          rfv = afv + (afv * deviation/100)
          else
          rfv = afv - (afv * deviation/100)
          end
  
        devvv = ((rfv.to_f/presentprice.to_f-1)*100)-averageprof.to_f #определяем квадратическое отклонение
        devvver = devvv.to_f**2 * (1/sravnenie.to_f) #с учетом вероятности, вариация
        devimas.push devvver.to_f
        newvalues.push rfv.to_i
        newvaluesdev.push rfv.to_i-afv #deviation
      end
      @newvalues = newvalues.join(", ")
      @newvaluesdev = newvaluesdev.join(", ")
      sum = 0 
      devimas.each do |i|
        sum += i
      end
      dispersia = Math.sqrt(sum)
      @dispersia = dispersia.to_i.to_s
  end

end

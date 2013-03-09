class Cards
  def initialize
    @list=[11,2,3,4,5,6,7,8,9,10,10,10]*4
  end

  def deleteOneCard(numb)#як выдаліць адзін элемент з масіва, я лепей не прыдумаў
    i=0                  #гэта для выпадка, калі аднолькавых элементаў некалькі
    @list.each do |elem|
      if elem==numb
        i+=1
      end
    end
    @list-=[numb]
    @list+=[numb]*(i-1)
  end

  def getCard
    valueCard = @list[rand(0..@list.count-1)]
    deleteOneCard(valueCard)
    return [valueCard]
  end

  def defCard(valueCard)
    hesh = {1=>'A',2=>2,3=>3,4=>4,5=>5,6=>6,7=>7,8=>8,9=>9,10=>'K',11=>'A'} #насамрэч, 10 - гэта не толькі кароль, але...
    hesh[valueCard]
  end
end


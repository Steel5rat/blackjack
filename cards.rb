class Cards
  def initialize
    @list=[1,2,3,4,5,6,7,8,9,10,10,10]*4
  end

  def deleteOneCard(numb)#як выдаліць адзін элемент з масіва, я лепей не прыдумаў
    i=0
    @list.each do |elem|
      if elem==numb
        i+=1
      end
    end
    @list-=[numb]
    @list+=[numb]*(i-1)
    print @list
  end
end


class Map

  attr_accessor :map

  def initialize
    @map = []
  end

  def assign(key, value)
    need_to_be_ow = self.map.select {|pair| pair[0] == key }
    if need_to_be_ow != []
      need_to_be_ow[0][-1] = value
    else
      @map << [key,value]
    end
  end

  def lookup(key)
    ans = self.map.select {|pair| pair[0] == key}
    ans[0][-1]
  end

  def remove(key)
    self.map.delete_if {|pair| pair[0] == key}
  end

  def show
    @map
  end

end

# Cases for testing
# mp = Map.new
# p mp.assign(:a, 1)
# p mp.assign(:b, 1)
# p mp.assign(:b, 2)
# p mp.show
# p mp.lookup(:a)
# p mp.remove(:b)
# p mp.show

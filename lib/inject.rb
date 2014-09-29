class Array
  def accumulate (init_val=nil, &block)
    raise "You must pass accumulate a block" unless block.is_a?(Proc)
    init_val.nil? ? accumulate = self.first : accumulate = init_val
    index = init_val.nil? ? 1 : 0
    for i in index..self.length-1
      accumulate = yield(accumulate, self[i])
    end
    accumulate
  end
end
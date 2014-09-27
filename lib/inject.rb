class Array
  def accumulate (init_val=nil, &block)
    raise "You must pass accumulate a block" unless block.is_a?(Proc)
    init_val.nil? ? accumulate = self.first :  accumulate = init_val
    each do |element|
      accumulate = block.call(accumulate, element)
    end
    accumulate
  end
end
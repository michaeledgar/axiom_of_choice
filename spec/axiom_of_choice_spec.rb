require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Set do
  describe '#pick' do
    it 'should select an element from the Set' do
      set = Set[5,3,1]
      set.should include(set.pick)
    end
  end

  describe '#pop' do
    it 'should remove elements from the Set' do
      total = Set[9,1,8,2,7]

      current = Set[9,1,8,2,7]
      removed = Set[]

      until current.empty?
        removed << current.pop
        total.should == current | removed
        (current & removed).should be_empty
      end
    end
  end
end

require 'clone_generator'

describe SectorGenerator do
  describe '.generator' do
    before(:all) do
      @sut = CloneGenerator.new(rand(1337))
    end
    context 'when called with an is_underdog value of true' do
      it 'return a clone name with 3 dashes' do
        clone_string = @sut.generate(is_underdog: true)
        expect(clone_string.count('-')).to eq(3)
      end
      it 'returns a clone name with three string sections and one numeric section'do
        clone_string = @sut.generate(is_underdog: true)
        sections = clone_string.split('-', -1)
        expect(sections[0].instance_of? String).to be true
        expect(sections[1].instance_of? String).to be true
        expect(sections[2].instance_of? String).to be true
        expect(sections[3].match? /\A\d+\z/).to be true
      end
      it 'returns a low-clearanced clone name' do
        for a in 1..10 do
          clone_string = @sut.generate(is_underdog: true)
          expect(/-[ROY]-/ =~ clone_string).to be >= 1
        end
      end
    end
    context 'when called with an is_underdog value of false' do
      it 'returns a high-clearanced clone name' do
        for a in 1..10 do
          clone_string = @sut.generate(is_underdog: false)
          expect(/-[GBI]-/ =~ clone_string).to be >= 1
        end
      end
      it 'return a clone name with 3 dashes' do
        clone_string = @sut.generate(is_underdog: false)
        expect(clone_string.count('-')).to eq(3)
      end
      it 'returns a clone name with three string sections and one numeric section'do
        clone_string = @sut.generate(is_underdog: true)
        sections = clone_string.split('-', -1)
        expect(sections[0].instance_of? String).to be true
        expect(sections[1].instance_of? String).to be true
        expect(sections[2].instance_of? String).to be true
        expect(sections[3].match? /\A\d+\z/).to be true
      end
    end
  end
end

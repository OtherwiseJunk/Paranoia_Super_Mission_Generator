require 'sector_generator'

describe SectorGenerator do
  describe '.generator' do
    context 'when called' do
      it 'returns a three lettered sector name' do
        sut = SectorGenerator.new(rand(1337))
        generated_sector = sut.generate()
        expect(generated_sector.length).to eq(3)
      end
    end
  end
end

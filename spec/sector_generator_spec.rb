require 'sector_generator'

describe SectorGenerator do
  describe '.generator' do
    context 'when called' do
      it 'returns a three lettered sector name' do
        sut = SectorGenerator.new(1337)
        generated_sector = sut.generate()
        expect(generated_sector.length).to eq(3)
      end
      it 'returns a unique sequence of values based on the provided seed' do
        sut_Seed_1336 = SectorGenerator.new(1336)
        sut_Seed_1338 = SectorGenerator.new(1338)
        expect(sut_Seed_1338.generate()).not_to eq(sut_Seed_1336.generate())
      end
    end
  end
end

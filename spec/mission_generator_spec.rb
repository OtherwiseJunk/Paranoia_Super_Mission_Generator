require 'mission_generator'

describe MissionGenerator do
  describe '.generator' do
    context 'when called' do
      before(:all){
        @sut = MissionGenerator.new(rand(1337))
      }
      it 'returns' do

      end
    end
  end
end

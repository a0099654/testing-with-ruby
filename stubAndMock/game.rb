class Character
    def initialize(strength: 1, die: Die.new)
        @strength = strength
        @die = die
    end 

    def climb(difficulty: 10)
        die.roll + strength >= difficulty
    end

    private

    attr_reader :strength, :die
end
 
describe Character do
    describe 'climbing check skill' do
        let(:die) { double }  
        let(:character) { Character.new(strength: 5, die: die) }

        #stub
        it 'climbs successfully when roll + strength is more than difficulty' do
            allow(die).to receive(:roll) { 11 }
            expect(character.climb(difficulty: 15)).to be_truthy
        end

        #stub
        it 'fails climbing check when roll + strength is length than difficulty' do
            allow(die).to receive(:roll) { 5 }
            expect(character.climb(difficulty: 15 )).to be_falsy
        end


    end
end
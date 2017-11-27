class Character
    def initialize(strength: 1, die: Die.new)
        @strength = strength
        @die = die
    end 

    def climb(difficulty: 10)
        die.roll + strength >= difficulty
    end
end
 
describe Character do
    describe 'climbing check skill' do
        let(:die) { double }  
        let(:character) { Character.new(strength: 5, die: die) }
        it 'climbs successfully when roll + strength is more than difficulty' do
            expect(character.climb(difficulty: 15)).to be_truthy
        end

        it 'fails climbing check when roll + strength is length than difficulty'
    end
end
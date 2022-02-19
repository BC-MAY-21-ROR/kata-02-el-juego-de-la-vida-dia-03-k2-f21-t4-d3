require 'rspec'
require_relative 'game_of_life'
require_relative 'grid'
require_relative 'cell'

describe Cell do
    describe '.alive?' do
        it 'return true or false' do
            expect(Cell.alive?()).to eq(false)
        end
    end
end

# describe Grid do
#     describe '.print_grid'  do
#         it 'print grid' do
#             expect(Grid.print_grid).to 
#         end
#     end
# end
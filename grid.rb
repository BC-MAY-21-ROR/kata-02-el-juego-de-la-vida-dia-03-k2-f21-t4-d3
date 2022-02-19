require 'matrix'
require_relative 'cell'

class Grid
    def initialize(rows, cols)
        @rows = rows
        @cols = cols
        @matrix = Matrix.build(@rows, @cols) {Cell.new(rand(4))}.to_a
    end
    
    def print_grid
      @matrix.each do |r|
        r.each do |c|
          c.print_cell
        end
        puts
      end
    end

    def analyze_cells 
        @matrix.each.with_index() do |r, i|
            r.each.with_index() do |c, k|
              c.count_neighbors(@matrix, i, k, @rows, @cols)
            end
        end

        @matrix.each do |r|
            r.each do |c|
              c.live_or_die
            end
        end
    end

end
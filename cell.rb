class Cell
    
    def initialize(live_or_die)
        @state = live_or_die == 1 ? "*" : "."
        @neighbors = 0
    end

    def print_cell
        print @state
    end

    def alive?
        @state == '*'
    end

    def live_or_die
        born if @neighbors == 3 and not alive?
        kill if @neighbors < 2 or @neighbors > 3
        @neighbors = 0
    end
    
    def count_neighbors(matrix, row, col, rows, cols)
        (row-1..row+1).each do |r|
            (col-1..col+1).each do |c|
                next if r < 0 or r >= rows
                next if c < 0 or c >= cols
                next if r == row and c == col
                @neighbors += matrix[r][c].alive? ? 1: 0
            end
        end  
    end

    def born
        @state = '*'
    end

    def kill
      @state = '.'
    end
end
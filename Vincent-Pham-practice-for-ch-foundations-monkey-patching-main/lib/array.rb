# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    
    def span
       return nil if self.length==0
       self.max - self.min 
    end

    def average
        return nil if self.length==0
         self.sum/(self.length*1.0)
    end

    def median
        return nil if self.length==0
        sorted=self.sort
        if sorted.length.odd?
           return sorted[(sorted.length/2)]
        else
            half = sorted.length/2
            sum = sorted[half-1]+sorted[half]
           return sum/2.0
        end
    end

    def counts
        result=Hash.new(0)
        self.each {|e| result[e]+=1}
        result
    end


    #phase 2

    def my_count(arguement)
        repeats =0
        self.each { |e| repeats +=1 if e == arguement}
        repeats
    end

    def my_index(arguement)
        self.each_with_index {|e,i| return i if e == arguement}
        return nil
    end

    def my_uniq
        result=[]
        self.select do |e|
            result<<e if !result.include?(e)
        end
        result
    end

    def my_transpose
        height = self.length
        width = self[0].length
        result = Array.new(height){[0]*width}
        (0...width).each do |col|
            (0...height).each do |row|
                result[col][row] = self[row][col]
            end
        end
        result
    end


end
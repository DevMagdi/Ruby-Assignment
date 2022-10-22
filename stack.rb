class Stack

    #define stack
    attr_accessor :stacks

    #initialize method
    def initialize()
        @stacks = []
    end
    
    #push method
    def push(value)
        @stacks.push(value)
    end

    #pop method
    def pop()
        #check stack Is Empty or not
        if @stacks.size == 0
            return puts "Error....No elements in Stack..your Stack is Empty"
        else 
            #remove elements form Stack
            @stacks.pop
        end
        return @stacks
    end

    #max method
    def max()
        #first we could think by sort the stack... then select the last 
        #element .... I think This is not efficent method
        #check stack Is Empty or not

        #returning  'puts' is_very_unsual. It would be better to return nil, 
        #which Array#max would do anyway 
        return puts "Error no input " if @stacks.empty?
        @stacks.max #the last experssion is returned automatically 
    end
end

#create class Extras < Stack
class Extras < Stack
    
    #average method

    def average()
        return puts "Error no input " if @stacks.empty?

        #used inject instead of loop to get more familiar with ruby
        sum = @stacks.inject(0, :+)
        #if sum an array of integers this way. the final result of average also be an Integer
        #unless u convert something to a float first
        sum / @stacks.size
    end
end

migoStack = Extras.new
puts migoStack.push(1)
puts migoStack.push(3)
puts migoStack.push(5)
migoStack.pop
puts migoStack.push(10)
puts migoStack.average
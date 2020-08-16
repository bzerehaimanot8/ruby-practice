#javascript to ruby (examples showing the difference)

#js

const getName = () => {
    let name = prompt("what is your name?");
return name;
};

#ruby
def getname
  puts "what is your name?"
  name = gets.chomp
  puts name
end
puts getname

#js

const reverseIt = () => {
    let string = "a man, a plan, a canal, frenemies!";

let reverse = "";

for (let i=0; i < string.length; i++) {
    reverse += string[string.length - (i+1)];
};

alert(reverse);
};

#ruby
def reverse_it
    string = "a man, a plan, a canal, frenemies!"
    reverse = ""
    i = 0
    while i < string.length
        reverse += string[string.length - (i+1)]
        # reverse = string[i] + reverse
        i += 1
    end
    puts reverse
end

#js
const swapEm = () => {
    let a = 10;
let b = 30;
let temp;

temp = b;
b = a;
a = temp;

alert("a is now " + a + ", and b is now " + b);
};

#ruby
def swap_ep
    a = 10
    b = 30
    tem = 0
    temp = b
    b = a
    a = tem
    puts "a is now #{a}, and b is now #{b}"
end
swap_ep

#js
const multiplyArray = (ary) => {
    if (ary.length == 0) { return 1; };

    let total = 1;
    // let total = ary[0];

    for (let i=0; i < ary.length; i++) {
        total = total * ary[i];
    };

    return total;
    };

#ruby
    def multiply_array(arr)
        if arr.length == 0
            1
        else
            total = 1
            arr.each do
            |i|
                total *= i
            end
            total
        end
    end
# my_arr = []
    my_arr = [2, 2, 3]
    sum = multiply_array(my_arr)
    puts sum

#js
    const fizzbuzzer = (x) => {
        if( x%(3*5) == 0 ) {
            return 'fizzbuzz'
        } else if( x%3 == 0 ) {
            return 'fizz'
        } else if ( x%5 == 0 ) {
            return 'buzz'
        } else {
            return 'archer'
        }
        }

#ruby
        def fizz_buzzer(x)
            if x % (3 * 5) == 0
                'fizzbuzz'
            elsif x % 3 == 0
                'fizz'
            elsif x % 5 == 0
                'buzz'
            else
                'archer'
            end
        end
        puts fizz_buzzer(15)
        puts fizz_buzzer(6)
        puts fizz_buzzer(10)
        puts fizz_buzzer(13)
        :heart:
            1


#js
        const nthFibonacciNumber = () => {
            let fibs = [1, 1];
        let num = prompt("which fibonacci number do you want?");

        while (fibs.length < parseInt(num)) {
            let length = fibs.length;
        let nextFib = fibs[length - 2] + fibs[length - 1];
        fibs.push(nextFib);
        }

        alert(fibs[fibs.length - 1] + " is the fibonacci number at position " + num);
        };

#ruby
        def nth_fibonacci_number
            fibs = [1, 1]
            puts "which fibonacci number do you want?"
            num = gets.chomp.to_i
            while fibs.length < num
                length = fibs.length
                next_fib = fibs[length - 2] + fibs[length - 1]
                fibs.push(next_fib)
            end
            puts "#{fibs[fibs.length - 1]} is is the fibonacci number at position #{num}"
        end
        nth_fibonacci_number


#js
const searchArray = (array, value) => {
    for(let i = 0; i < array.length-1; i++) {
        if(array[i] == value) {
            return true;
        break;
        }
        }
        return -1;
        };

# ruby
#Search Array
def search_array(array, value)
  array.each do |i|
    if i == value
      # puts  'value found'
      return true
    end
  end
  -1
end
values = [1,2,3,4,5]
puts search_array(values, 2)


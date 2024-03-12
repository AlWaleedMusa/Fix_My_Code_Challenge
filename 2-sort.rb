###
#
#  Sort integer arguments (ascending) 
#
###

###
# Sort integer arguments (ascending)
###

result = []
ARGV.each do |arg|
    # skip if not an integer
    next unless arg.match?(/^-?\d+$/)

    # convert to integer
    i_arg = arg.to_i

    # insert result at the right position
    is_inserted = false
    result.each_with_index do |num, index|
        if num >= i_arg
            result.insert(index, i_arg)
            is_inserted = true
            break
        end
    end
    result << i_arg unless is_inserted
end

puts result


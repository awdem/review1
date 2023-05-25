def report_builder(school_results)
  school_results_array = school_results.split(', ')

  green_sum = 0
  red_sum = 0

  school_results_array.each do |result|
    case result
    when 'Green'
      green_sum += 1
    when 'Red'
      red_sum += 1
    end
  end

  return_string = ""

  if green_sum != 0
    return_string += "Green: #{green_sum}"
  end

  if red_sum != 0 
    return_string += "\nRed: #{red_sum}"
  end

  return return_string
end
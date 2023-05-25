def report_builder(school_results)
  school_results_array = school_results.split(',').map!(&:strip)
  return_string = ""
  green_sum = 0
  amber_sum = 0
  red_sum = 0

  school_results_array.each do |result|
    case result
    when 'Green' then green_sum += 1
    when 'Amber' then amber_sum += 1
    when 'Red' then red_sum += 1
    end
  end

  if green_sum != 0
    return_string += "Green: #{green_sum}"
  end

  if amber_sum != 0 
    return_string += "\nAmber: #{amber_sum}"
  end

  if red_sum != 0 
    return_string += "\nRed: #{red_sum}"
  end

  return return_string
end
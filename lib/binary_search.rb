class BinarySearch

  def functional_chop(needle, haystack, acc = 0)
    if haystack.empty?
      -1
    else
      chop = (haystack.size.to_f / 2).floor
      middle = haystack[chop]
      if middle == needle
        acc + chop
      elsif middle < needle
        functional_chop(needle, haystack.drop(chop + 1), acc + chop + 1)
      else
        functional_chop(needle, haystack.take(chop), acc)
      end
    end
  end
end


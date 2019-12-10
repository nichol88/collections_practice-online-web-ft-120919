
def sort_array_asc(a)
  r = []
  i = 0
  a.each{ |num|
    if r.length == 0
      r.push(num)
    else
      # compare to nums in r and see where it fits (< or >)
      r.each_with_index{ |rnum, idx|
        if num < rnum
          r.unshift(num)
          break
        elsif idx == r.length - 1
          r.push(num)
          break
        else
        end

      }
    end
  }
  r
end

def sort_array_desc(a)
  r = []
  i = 0
  a.each{ |num|
    if r.length == 0
      r.push(num)
    else
      # compare to nums in r and see where it fits (< or >)
      r.each_with_index{ |rnum, idx|
        if num > rnum
          r.insert(idx, num)
          break
        elsif idx == r.length - 1
          r.push(num)
          break
        else

        end

      }
    end
  }

  r
end

def sort_array_char_count(a)
  r = []
  i = 0
  a.each{ |word|
    if r.empty? # initial add, if array is empty
      r.push(word)
    else
      r.each_with_index{ |rword, idx|
        if word.length < rword.length
          r.unshift(word)
          break
        elsif idx == r.length - 1
          r.push(word)
          break
        else
        end
      }
    end
  }
  r
end

def swap_elements(a)
  a.insert(2,a.delete_at(1))
end

def reverse_array(a)
  a.reverse
end

def kesha_maker(a)
  a.map{ |e|
    e.tr("#{e[2]}",'$')
  }
end

def find_a(a)
  a.select { |e|
    e.start_with?("a")
  }
end

def sum_array(a)
  a.inject (0) { |memo, e|
    memo + e
  }
end

def add_s(a)
  # add s to end of all but 2nd element
  a.each_with_index.collect{|e, i|
    if i != 1
      e << "s"
    else
      e
    end
  }
end

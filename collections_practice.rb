
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
  two = a[1]
  three = a[2]
  a.insert(2,a.delete_at(1))
end

def reverse_array

end

def kesha_maker

end

def find_a

end

def sum_array

end

def add_s

end

require "awesome_print"

# Supprimer tous les 1 connectés verticalement ou horizontalement à un bord.
arr = [
  [0, 1, 0, 1, 0, 1, 0, 0],
  [0, 1, 0, 1, 0, 0, 0, 1],
  [1, 1, 1, 1, 0, 1, 1, 0],
  [1, 1, 1, 0, 1, 1, 1, 0],
  [0, 1, 0, 1, 0, 0, 0, 1]
]

def function(arr)
  result = [[], [], [], [], []]

  arr.each_with_index do |line_value, line_index|
    line_value.each_with_index do |column_value, column_index|
      # If item is located in a border, than push 0 into the result array
      if line_index == 0 || line_index == arr.size - 1 || column_index == 0 || column_index == line_index.size - 1
        result[line_index][column_index] = 0
      else
        # If item value is 1, checks if it is connected to a border through a line or a column of 1
        if column_value == 1
          check_column_before = !arr[line_index].first(column_index + 1).any? {|item| item == 0 }
          check_column_after = !arr[line_index].drop(column_index + 1).any? {|item| item == 0 }
          check_line_above = !arr[0..line_index].any? {|item| item[column_index] == 0}
          check_line_below = !arr[line_index..arr.size - 1].any? {|item| item[column_index] == 0}

          result[line_index][column_index] = check_column_before || check_column_after || check_line_above || check_line_below ? 0 : 1
        else
          result[line_index][column_index] = 0
        end
      end
    end
  end

  result
end

pp function(arr)

# Temporal complexity: O(n²) because I have two loops. So that algo sucks, according to: https://www.bigocheatsheet.com/

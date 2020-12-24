temperatures = [33, 15, 17, 20, 23, 23, 28, 40, 21, 19, 31, 18, 30, 31, 28, 23, 19, 28, 27, 30, 39, 17, 17, 20, 19, 23, 28, 30, 34, 28]

def find(arr)
  max = []
  min = []
  avrg = []
  arr = arr.sort
  length = arr.length
  max << arr[-1] << arr[-2] << arr[-3]
  min << arr[0] << arr[1] << arr[2]
  avrg << arr[length / 2 - 1] << arr[length / 2] << arr[length / 2 + 1]
  puts max.to_s, min.to_s, avrg.to_s
end

find temperatures

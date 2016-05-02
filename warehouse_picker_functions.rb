
# Given a bay, returns the item in that bay
# - given "b5", should return 'nail filer'

def given_bay(request)

  bay = request[0].downcase
  rack = request[1..-1].to_i

  warehouse_bays = [
  [ "empty", "stop sign", "blouse", "hanger", "rubber duck", "shovel", "bookmark", "model car", "glow stick", "rubber band"],
  [ "tyre swing", "sharpie", "picture frame", "photo album", "nail filer", "tooth paste", "bath fizzers", "tissue box", "deodorant", "empty"],
  [ "rusty nail", "drill press", "chalk", "word search", "thermometer", "face wash", "paint brush", "candy wrapper", "shoe lace", "leg warmers"]
  ]

  if bay == "a"
    return warehouse_bays[0][rack - 1]
  elsif bay == "b"
    return warehouse_bays[1][rack - 1]
  elsif bay == "c"
    return warehouse_bays[2][rack - 1]
  end
end

# (2) Given an item return the bay that it is in.
#   - given "nail filer" should return "b5"

def given_item(request)

  abc = ["a", "b", "c"]
  warehouse_bays = [
  [ "empty", "stop sign", "blouse", "hanger", "rubber duck", "shovel", "bookmark", "model car", "glow stick", "rubber band"],
  [ "tyre swing", "sharpie", "picture frame", "photo album", "nail filer", "tooth paste", "bath fizzers", "tissue box", "deodorant", "cookie jar"],
  [ "rusty nail", "drill press", "chalk", "word search", "thermometer", "face wash", "paint brush", "candy wrapper", "shoe lace", "leg warmers"]
  ]

  i = 0
  j = 0
  while i < warehouse_bays.length
    while j < warehouse_bays[i].length
      if warehouse_bays[i][j] == request
        string1 = (abc[i] + (j+1).to_s)
      end
      j += 1
    end
    i += 1
  end
  return string1
end


# (3) Given a list of bays, list the items in those bays
# - given "b5, b10, and b6", determine that the products are "nail filer, cookie jar, and tooth paste", and they're five bays apart

def list_of_bays(*request)

  warehouse_bays = [
  [ "empty", "stop sign", "blouse", "hanger", "rubber duck", "shovel", "bookmark", "model car", "glow stick", "rubber band"],
  [ "tyre swing", "sharpie", "picture frame", "photo album", "nail filer", "tooth paste", "bath fizzers", "tissue box", "deodorant", "empty"],
  [ "rusty nail", "drill press", "chalk", "word search", "thermometer", "face wash", "paint brush", "candy wrapper", "shoe lace", "leg warmers"]
  ]
  bay_list = []
  item_list = []

  i = 0
  while i < request.length
    bay = request[i][0].downcase
    rack = request[i][1..-1].to_i
    bay_list << rack
    if bay == "a"
      item_list << warehouse_bays[0][rack - 1]
    elsif bay == "b"
      item_list << warehouse_bays[1][rack - 1]
    elsif bay == "c"
      item_list << warehouse_bays[2][rack - 1]
    end
    i += 1
  end
  item_list << bay_list.max - bay_list.min
  # This makes the very last value in the item_list array to be the distance
  # between the highest and lowest bay number.
  return item_list
end

puts(given_bay("b5"))
puts(given_item("nail filer"))
puts(list_of_bays("b5", "b10", "b6"))

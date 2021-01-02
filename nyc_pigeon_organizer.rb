
# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }



def nyc_pigeon_organizer(data)
new_pigeon_hash = data.each_with_object({}) do |(key, value), hash_1| 
  value.each do |next_key, names| 
    names.each do |name|
      if !hash_1[name]
        hash_1[name] = {}
    end
      if !hash_1[name][key]
        hash_1[name][key] = []
      end
      hash_1[name][key].push(next_key.to_s)

    end
   end
   

 end
end

# nyc_pigeon_organizer(pigeon_data)



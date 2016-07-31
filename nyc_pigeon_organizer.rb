=begin
def nyc_pigeon_organizer(data)
  # write your code here!
  names = {}

  data.collect do |key, specs|
    specs.each do |specs, bird_names|
      bird_names.each do |name|
        names[name] ||= {}
        names[name][key] ||= []
        names[name][key] << specs.to_s
      end
    end
  end
  names
end
=end

def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |key, specs|
    specs.each do |value, names|
      names.each do |name|
      if not pigeons.has_key?(name)
        pigeons[name] = {}
      end

      if not pigeons[name].has_key?(key)
        pigeons[name][key] = []
      end

      pigeons[name][key] << value.to_s
    end
  end
end
pigeons
end

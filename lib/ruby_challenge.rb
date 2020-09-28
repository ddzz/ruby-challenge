class RubyChallenge
  def initialize
    @paths = []
    file = File.open(File.dirname(__FILE__) + "/support/paths2.txt").read
    file.each_line do |line|
      new_line = line.chomp.split(",")
      if new_line.length > 3
        @paths << new_line
      end
    end
  end

  def find_most_common_path
    new_arr = []
    @paths.each do |path|
      path.each_cons(4).to_a.each do |elem|
        new_arr << elem
      end
    end

    result_hash = {}
    new_arr.each do |path|
      path_key = path.join("")
      if result_hash.key?(path_key)
        result_hash[path_key] += 1
      else
        result_hash[path_key] = 1
      end
    end

    result_hash.sort_by {|key, value| value}.last(5)
  end
end

a = RubyChallenge.new
a.find_most_common_path

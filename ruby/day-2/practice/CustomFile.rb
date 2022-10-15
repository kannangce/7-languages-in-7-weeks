class CustomFile
  def self.open(file)
    if block_given?
      puts "Called with a block"
      File.open(file) {yield}
      File.new
    end
      puts "Called to return File"
      File.open(file)
  end
end
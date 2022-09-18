class CustomFile
  def self.open(file)
    if(block_given?)
      puts "Called with a block"
      File.open(file) {yield}
    end
      puts "Called to return File"
    return  File.open(file)
  end
end
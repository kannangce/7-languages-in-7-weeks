class CSVRow
  def initialize(data={})
    p data
    @data = data
  end
  private def method_missing(symbol, *args)
    if  @data.has_key?(symbol)
      return @data[symbol]
    end
    p "Invalid key #{symbol}"
  end
end

class ActAsCsv
  def self.act_as_csv
    define_method 'read' do
      file = File.new(@file_name)

      @headers = file.gets.chomp.split(',')
      file.each do |row|
        p row
        @result << CSVRow.new(@headers.zip(row.chomp.split(',')).to_h)
      end
    end

    define_method(:headers) {@headers}

    define_method(:content) {@result}

    define_method 'initialize' do |file_name|
      @file_name = file_name
      @result = []
      read
    end
  end
end

class RubyCsv < ActAsCsv
  act_as_csv

  def each
    @result.each { |row|
      yield row
    }
  end
end

RubyCsv.new('biostats.csv')
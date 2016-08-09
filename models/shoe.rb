require_relative('../db/sql_runner')

class Shoe

  attr_reader :first_name, :last_name, :quantity, :size, :colour, :street_address, :town, :postcode

  def initialize(options)
    @first_name = options['first_name']
    @last_name = options['last_name']
    @quantity = options['quantity'].to_i
    @size = options['size'].to_i
    @colour = options['colour']
    @street_address = options['street_address']
    @town = options['town']
    @postcode = options['postcode']
  end

  def self.all
    sql = "SELECT * FROM shoes;"
    shoes = SqlRunner.run(sql)
    result = shoes.map { |shoe| Shoe.new(shoe)}
    return result
  end

  def pretty_name
    return @first_name.concat(" #{@last_name}")
  end 

  def total
    @quantity * 60
  end

  def save
    sql = "INSERT INTO shoes (first_name, last_name, quantity, size, colour, street_address, town, postcode) VALUES ('#{@first_name}', '#{@last_name}', #{@quantity}, #{@size}, '#{@colour}', '#{@street_address}', '#{@town}', '#{@postcode}') RETURNING *;"
    shoe = SqlRunner.run(sql).first
    @id = shoe['id'].to_i
  end

end
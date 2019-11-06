require_relative('../db/sql_runner.rb')

class House

attr_reader :id, :name, :url


def initialize(options)
  @id = options['id'].to_i if options['id']
  @name = options['name']
  @url = options['url']
end

def save()
  sql = "INSERT INTO houses
  (name, url) VALUES ($1, $2)
  RETURNING id"
  values = [@name, @url]
  return SqlRunner.run(sql,values).first['id'].to_i
end

def self.all()
  sql = "SELECT * FROM houses"
  return SqlRunner.run(sql).map{|house| self.new(house)}
end

def self.find_by_id(id)
  sql = "SELECT * FROM houses WHERE id = $1"
  values = [id]
  return SqlRunner.run(sql, values).map{|house| self.new(house)}
end

end

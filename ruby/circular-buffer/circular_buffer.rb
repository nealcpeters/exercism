class CircularBuffer

  def initialize(limit)
    @limit = limit
    @buffer = []
  end

  def read
    raise BufferEmptyException if @buffer.empty?
    @buffer.shift
  end

  def write(element)
    raise BufferNilException if element == nil
    raise BufferFullException if @buffer.length >= @limit
    @buffer << element
  end

  def write!(element)
    @buffer.shift
    @buffer << element
  end

  def clear
    @buffer.clear 
  end
end

class BufferNilException < Exception
end

class BufferEmptyException < Exception
end

class BufferFullException < Exception
end
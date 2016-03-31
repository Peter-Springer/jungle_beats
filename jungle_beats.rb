  require "./linked_list.rb"
  class JungleBeats

  def initialize
    @list = LinkedList.new
  end

  def list
    @list
  end

  def append(data)
    beats = data.split(" ")
      beats.each do |beat|
        @list.append(beat)
      end
    data
  end

  def count
    @list.count
  end

  def play
      beats = @list.to_string
        `say -r 500 -v Boing #{beats}`
      end
  end

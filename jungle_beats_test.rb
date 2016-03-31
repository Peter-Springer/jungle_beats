require "minitest/autorun"
require "minitest/pride"
require "./jungle_beats"
require "./linked_list.rb"
require "./node.rb"

class JungleBeatsTest < Minitest::Test

def test_jungle_beats_exists
  jb = JungleBeats.new
  assert_equal JungleBeats, jb.class
end

def test_new_list_exists
  jb = JungleBeats.new
  assert_equal LinkedList, jb.list.class
  assert_equal nil, jb.list.head
end

def test_jungle_beat_append
  jb = JungleBeats.new
  assert_equal "deep doo ditt", jb.append("deep doo ditt")
  assert_equal "deep", jb.list.head.data
  assert_equal "doo", jb.list.head.next_node.data
  assert_equal "woo hoo shu", jb.append("woo hoo shu")
end

def test_jungle_beat_count
  jb = JungleBeats.new
  assert_equal "deep doo ditt", jb.append("deep doo ditt")
  assert_equal 3, jb.count
end

def test_jungle_beat_play
  jb = JungleBeats.new
  beats = "ding dah oom oom ding oom oom oom ding dah oom oom ding dah oom oom ding dah oom oom "
  jb.append(beats)
  jb.play
end




end

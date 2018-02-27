class Notebook
  attr_accessor :notes
  def initialize
    @notes = {}
  end
  def new_note(note)
    if @notes[note.tag] == nil
      @notes[note.tag] = [note.message]
    else
      @notes[note.tag].push(note.message)
    end
  end
  def search(tag)
    @notes.each{ |key,value| return value if key == tag }
  end
end

class Note
  attr_accessor :message, :tag
  def initialize(message, tag)
    @message = message
    @tag = tag
  end
end

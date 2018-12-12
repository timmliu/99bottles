class Bottles
  def song
    verses
  end

  def verses(top = 99, bottom = 0)
    output = verse(top)
    top = top - 1
    while top >= bottom
      output = output + "\n" + verse(top)
      top = top - 1
    end
    output
  end

  def verse(bottles)
    if bottles == 0
      <<~VERSE
      No more bottles of beer on the wall, no more bottles of beer.
      Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
    elsif bottles == 1
      <<~VERSE
      1 bottle of beer on the wall, 1 bottle of beer.
      Take it down and pass it around, no more bottles of beer on the wall.
      VERSE
    else
      <<~VERSE
      #{phrase(bottles)} of beer on the wall, #{phrase(bottles)} of beer.
      Take one down and pass it around, #{phrase(bottles - 1)} of beer on the wall.
      VERSE
    end
  end

  def phrase(count = 99, word = "bottle")
    "#{count} #{pluralize(word)}"
    if count == 0
      "no more #{pluralize(word)}"
    elsif count == 1
      "1 #{word}"
    else
      "#{count} #{pluralize(word)}"
    end
  end

  def pluralize(word)
    if word[-1] == "s"
      word + "es"
    else
      word + "s"
    end
  end
end

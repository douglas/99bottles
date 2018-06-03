class Bottles
  def song
    verses(99, 0)
  end

  def verse(number_bottles)
    sing(number_bottles)
  end

  def verses(from, to)
    from.downto(to).map { |verse| sing(verse) }.join("\n")
  end

  def sing(qty)
    if qty > 2
      <<~VERSE
      #{qty} bottles of beer on the wall, #{qty} bottles of beer.
      Take one down and pass it around, #{qty-1} bottles of beer on the wall.
      VERSE
    elsif qty == 2
      <<~VERSE
      #{qty} bottles of beer on the wall, #{qty} bottles of beer.
      Take one down and pass it around, 1 bottle of beer on the wall.
      VERSE
    elsif qty == 1
      <<~VERSE
      #{qty} bottle of beer on the wall, #{qty} bottle of beer.
      Take it down and pass it around, no more bottles of beer on the wall.
      VERSE
    else
      <<~VERSE
      No more bottles of beer on the wall, no more bottles of beer.
      Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
    end
  end
end

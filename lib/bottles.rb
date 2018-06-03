class Bottles
  def song
    verses(99, 0)
  end

  def verse(number_bottles)
    if number_bottles > 0
      "#{bottle_or_bottles(number_bottles)} of beer on the wall, #{bottle_or_bottles(number_bottles)} of beer.\n" \
      "Take #{one_or_it(number_bottles)} down and pass it around, #{bottle_or_bottles(number_bottles-1)} " \
      "of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def verses(from, to)
    from.downto(to).map { |verse_number| verse(verse_number) }.join("\n")
  end

  private

  def bottle_or_bottles(number_bottles)
    return "no more bottles" if number_bottles == 0
    return "1 bottle" if number_bottles == 1
    "#{number_bottles} bottles"
  end

  def one_or_it(number_bottles)
    number_bottles > 1 ? "one" : "it"
  end
end

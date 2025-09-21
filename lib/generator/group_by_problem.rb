class GroupByProblem
  def self.test_suites
    exercise = Exercise.new(:group_by)

    exercise << Problem.new(
      "group_words_by_length",
      { "words" => %w[sue alice steve sally adam fort tops dog cat] },
      { "grouped" => { 3 => %w[sue dog cat], 4 => %w[adam fort tops], 5 => %w[alice steve sally] } },
      "word.length"
    ).example!

    exercise << Problem.new(
      "group_numbers_by_odd_and_even",
      { "numbers" => [1, 1, 2, 3, 5, 8, 13, 21, 34, 55] },
      { "odd_and_even" => { 1 => [1, 1, 3, 5, 13, 21, 55], 0 => [2, 8, 34] } },
      "number % 2"
    ).loop!

    exercise << Problem.new(
      "group_words_by_first_letter",
      { "words" => %w[
        ant axis albatross
        bolt badge butter
        car cdr column
      ] },
      { "words_by_first_letter" => {
        "a" => %w[ant axis albatross],
        "b" => %w[bolt badge butter],
        "c" => %w[car cdr column]
      } },
      "word[0]"
    ).assignment!

    exercise << Problem.new(
      "group_words_by_uniqueness",
      { "words" => %w[one two one TWO three one three three three] },
      { "grouped" => { "one" => %w[one one one], "two" => %w[two TWO], "three" => %w[three three three three] } },
      "word.downcase"
    )

    exercise << Problem.new(
      "group_by_number_of_zeros",
      { "numbers" => [1, 3, 500, 200, 4000, 3000, 10_000, 90, 20, 500_000] },
      { "grouped" => { 0 => [1, 3], 2 => [500, 200], 3 => [4000, 3000], 4 => [10_000], 1 => [90, 20],
                       5 => [500_000] } },
      'number.to_s.count("0")'
    )

    exercise << Problem.new(
      "group_by_order_of_magnitude",
      { "numbers" => [1, 3, 503, 239, 4938, 3932, 19_982, 93, 21, 501_787] },
      { "grouped" => { 1 => [1, 3], 2 => [93, 21], 3 => [503, 239], 4 => [4938, 3932], 5 => [19_982],
                       6 => [501_787] } },
      "number.to_s.length"
    )

    exercise.test_suites
  end
end

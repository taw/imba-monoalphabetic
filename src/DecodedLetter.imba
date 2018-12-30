export tag DecodedLetter < span
  prop key
  prop letter

  def render
    let known = key[letter]
    <self .{known ? "known" : "unknown"}>
      known ? key[letter] : letter

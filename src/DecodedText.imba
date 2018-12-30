import DecodedLetter from './DecodedLetter'

export tag DecodedText < span
  prop text
  prop key

  def render
    <self>
      for letter in text
        <DecodedLetter letter=letter key=key>

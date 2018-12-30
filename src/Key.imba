import ngrams from './ngrams'
import uniq from './uniq'

export tag Key
  prop text
  prop key

  def render
    let stats = ngrams(text, 1)
    let letters = uniq([*Object.keys(stats), *Object.keys(key)])
    # JS sort such fail
    letters.sort do |a, b|
      let a_known = !!key[a]
      let b_known = !!key[b]
      if a_known == b_known
        stats[b] - stats[a]
      else if a_known
        -1
      else
        1

    <self>
      <table>
        for letter in letters
          <tr@{letter}>
            <td>
              stats[letter] || 0
            <td.letter>
              letter
            <td>
            <input[key[letter]] size=1>

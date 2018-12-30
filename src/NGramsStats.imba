import ngrams from './ngrams'
import DecodedText from './DecodedText'

export tag NGramsStats
  prop text
  prop key
  prop n

  def render
    let stats = ngrams(text, n)
    let top_ngrams = Object.keys(stats)
    top_ngrams.sort do |a,b|
      stats[b] - stats[a]
    <self>
      <table>
        for ngram in top_ngrams
          <tr>
            <td>
              <DecodedText text=ngram key=key>
            <td>
              stats[ngram]

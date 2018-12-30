import DecodedText from './DecodedText'
import Key from './Key'
import NGramsStats from './NGramsStats'

tag App
  def setup
    @text = "garyxqhqlxfwhswjxhzsrhxdwrxcwhxvrwlrqsfwbvxnqbwvcgawgxvfhpdrcgarfwgcwjrjyrbqsgaxcswjxhzxcwhcqfwhhrdwsrhxdgarfawbwfgrbxcgxfsrwgpbrcqsfwgcawnrrnqhnrdgqcpttqbgwfwbvxnqbqpchxsrcgzhruxgawdwtgwgxqvcsqbwjypcaqbcgwhkxvlwvdcaqbgtpbcpxgapvgxvlgarzawnrlbwfxhrwvdjpcfphwbyqdxrccgbqvlshroxyhrsqbrhxjycwvdbrgbwfgwyhrfhwucsqbaqhdxvltbrzdrvgwhwvdfbwvxwhwdwtgwgxqvcsqbwcgbqvlyxgrwvdqsgrvawnrfawbwfgrbxcgxfcgbxtrdqbctqggrdfqwgtwggrbvcsqbfwjqpshwlrfwgcwbrqyhxlwgrfwbvxnqbrcjrwvxvlgarzwbrdrtrvdrvgqvvpgbxrvgcxvwvxjwhshrcasqbcpbnxnwhwvdyrfwpcrqsgarhwblrtbqtqbgxqvqsjrwgxvgarxbdxrgwbrcqjrgxjrcbrsrbbrdgqwcaztrbfwbvxnqbrcqsgargrbbrcgbxwhswjxhxrcxvgarqbdrbfwbvxnqbwgarzwbrgarcgbxfgrcgfwbvxnqbrchxnxvlfwgcyrhqvlgqguqcpyswjxhxrcgartwvgarbxvwrwvdsrhxvwrgarsqbjrbfqjtbxcrcgaryxlfwgcgargxlrbhxqviwlpwbhrqtwbdcvquhrqtwbdfhqpdrdhrqtwbdwvdcpvdwfhqpdrdhrqtwbdsrhxvwrfqjtbxcrcwhhgarvqvtwvgarbxvrfwgcuaxfabwvlrxvcxersbqjgarcjwhhbpcgzctqggrdfwggqgaryxlfwgcxerdtpjwwvdxvfhpdrccpfadxnrbcrsqbjcwcgarhzvoqfrhqgcrbnwhwvdfarrgwawcurhhwcgardqjrcgxffwggarwvcurbxciwlpwbpvdx"
    @key = {}

  def render
    console.log(@key)
    <self>
      <header>
        "Monoalphabetic Decoder"

      <h3>
        "Encrypted"
      <textarea[@text]>

      <h3>
        "Decoded"
      <DecodedText key=@key text=@text>

      <div.columns>
        <section.key>
          <h3>
            "Key"
          <Key text=@text key=@key>

        <section.ng2>
          <h3>
            "2-Grams"
          <NGramsStats text=@text key=@key n=2>

        <section.ng3>
          <h3>
            "3-Grams"
          <NGramsStats text=@text key=@key n=3>

        <section.ng4>
          <h3>
            "4-Grams"
          <NGramsStats text=@text key=@key n=4>

        <section.ng5>
          <h3>
            "5-Grams"
          <NGramsStats text=@text key=@key n=5>

Imba.mount <App>

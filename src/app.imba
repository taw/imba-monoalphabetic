import DecodedText from './DecodedText'
import Key from './Key'
import NGramsStats from './NGramsStats'

tag App
  def setup
    @text = "garyxqhqlxfwhswjxhzsrhxdwrxcwhxvrwlrqsfwbvxnqbwvcgawgxvfhpdrcgarfwgcwjrjyrbqsgaxcswjxhzxcwhcqfwhhrdwsrhxdgarfawbwfgrbxcgxfsrwgpbrcqsfwgcawnrrnqhnrdgqcpttqbgwfwbvxnqbqpchxsrcgzhruxgawdwtgwgxqvcsqbwjypcaqbcgwhkxvlwvdcaqbgtpbcpxgapvgxvlgarzawnrlbwfxhrwvdjpcfphwbyqdxrccgbqvlshroxyhrsqbrhxjycwvdbrgbwfgwyhrfhwucsqbaqhdxvltbrzdrvgwhwvdfbwvxwhwdwtgwgxqvcsqbwcgbqvlyxgrwvdqsgrvawnrfawbwfgrbxcgxfcgbxtrdqbctqggrdfqwgtwggrbvcsqbfwjqpshwlrfwgcwbrqyhxlwgrfwbvxnqbrcjrwvxvlgarzwbrdrtrvdrvgqvvpgbxrvgcxvwvxjwhshrcasqbcpbnxnwhwvdyrfwpcrqsgarhwblrtbqtqbgxqvqsjrwgxvgarxbdxrgwbrcqjrgxjrcbrsrbbrdgqwcaztrbfwbvxnqbrcqsgargrbbrcgbxwhswjxhxrcxvgarqbdrbfwbvxnqbwgarzwbrgarcgbxfgrcgfwbvxnqbrchxnxvlfwgcyrhqvlgqguqcpyswjxhxrcgartwvgarbxvwrwvdsrhxvwrgarsqbjrbfqjtbxcrcgaryxlfwgcgargxlrbhxqviwlpwbhrqtwbdcvquhrqtwbdfhqpdrdhrqtwbdwvdcpvdwfhqpdrdhrqtwbdsrhxvwrfqjtbxcrcwhhgarvqvtwvgarbxvrfwgcuaxfabwvlrxvcxersbqjgarcjwhhbpcgzctqggrdfwggqgaryxlfwgcxerdtpjwwvdxvfhpdrccpfadxnrbcrsqbjcwcgarhzvoqfrhqgcrbnwhwvdfarrgwawcurhhwcgardqjrcgxffwggarwvcurbxciwlpwbpvdx"
    @key = {}

  def upload(event)
    let file = event.native:target:files[0]
    return unless file
    let reader = FileReader.new

    reader:onload = do |event|
      @text = event:target:result
      Imba.commit
    reader.read-as-text(file)

  def render
    console.log(@key)
    <self>
      <header>
        "Monoalphabetic Decoder"

      <h3>
        "Encrypted"
      <textarea[@text]>
      <input#file type="file" :change.upload>

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

export def ngrams(encrypted, n)
  console.log(encrypted)
  let result = {}
  let i = 0
  while i <= encrypted:length - n
    let slice = encrypted.substr(i, n)
    unless result[slice]
      result[slice] = 0
    result[slice] += 1
    i += 1
  result

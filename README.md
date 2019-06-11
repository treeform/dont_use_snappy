# nimsnappy

Nim wrapper for the `snappy` compression library. there is also a high-level
API to for easy usage. The two functions exposed are `compress` and
`uncompress`. This wrapper tracks `snappy` version `1.1.3`

Example usage:

```nim
import snappy
var input = "some string"
var compress = compress(input)
var decompress = uncompress(compress)
echo decompress
```
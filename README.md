![Snappy Logo](docs/snappyLogo.png)

# Snappy

Forked from: https://github.com/dfdeshom/nimsnappy

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


# API: snappy

```nim
import snappy
```

## **type** SnappyException


```nim
SnappyException = object of Exception
```

## **proc** compress

Compress a string using snappy.

```nim
proc compress(input: string): string {.raises: [SnappyException].}
```

## **proc** compress

Compress a byte array.

```nim
proc compress(input: seq[uint8]): seq[uint8] {.raises: [SnappyException].}
```

## **proc** uncompress

Uncompress a string

```nim
proc uncompress(input: string): string {.raises: [SnappyException].}
```

## **proc** uncompress

Uncompress a byte array.

```nim
proc uncompress(input: seq[uint8]): seq[uint8] {.raises: [SnappyException].}
```


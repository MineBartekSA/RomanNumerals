# RomanNumerals

Allows you to easly convert between Roman and Arabic numerals

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     RomanNumerals:
       github: MineBartekSA/RomanNumerals
   ```

2. Run `shards install`

## Usage

```crystal
require "RomanNumerals"
puts RomanNumerals.convert "CLI" # >> 151
puts RomanNumerals.convert 151 # >> CLI
```

## Contributing

1. Fork it (<https://github.com/MineBartekSA/RomanNumerals/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Bartłomiej Skoczeń](https://github.com/MineBartekSA) - creator and maintainer

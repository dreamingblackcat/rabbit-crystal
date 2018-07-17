# rabbit-crystal

This is a direct port of [Rabbit-Ruby](https://github.com/Rabbit-Converter/Rabbit-Ruby) gem to crystal language. Basically, it provides a converter class that lets you convert between unicode and zawgyi (Two conflicting fonts in Myanmar).

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  rabbit-crystal:
    github: dreamingblackcat/rabbit-crystal
```

## Usage

```crystal
require 'rabbit'

rabbit = Rabbit::Converter.new

rabbit.uni2zg("မင်္ဂလာပါ")  # returns zg strings "မဂၤလာပါ"

rabbit.zg2uni("မဂၤလာပါ")   # returns unicode strings "မင်္ဂလာပါ"

```

## Contributing

1. Fork it (<https://github.com/your-github-user/rabbit-crystal/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [dreamingblackcat](https://github.com/dreamingblackcat) dreamingblackcat - creator, maintainer

## Credits

As this is a direct port, the credit all goes to the original creator of [Rabbit Converter](https://github.com/Rabbit-Converter) and the creator of [Rabbit-Ruby](https://github.com/Rabbit-Converter/Rabbit-Ruby)


## License
MIT

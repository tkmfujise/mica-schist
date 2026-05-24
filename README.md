# Sonic Pi Examples

> [!CAUTION]
> Status: Work in Progress


## Built With
* [Sonic Pi](https://sonic-pi.net/)
* [SoX](https://sourceforge.net/projects/sox/)
* [Nanoc](https://nanoc.app/)
* [Asciidoctor](https://asciidoctor.org/)
* [Almond.CSS](https://alvaromontoro.github.io/almond.css/demo/)



## Development

### Nanoc

Run Web server.
```
$ rake w
```

### Sonic Pi

Run OSC Server.

```ruby
live_loop :eval do
  use_real_time
  code = sync "/osc*/eval"
  puts code
  run_code code[0]
end
```

### mica/bin/console

Eval a code.

```ruby
(s = Mica::Sound.new 'cc0/sonic_pi/samples/elec_flip/elec_flip.rb').play
```

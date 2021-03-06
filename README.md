# Penfeld

![Penfeld Banner](PenfeldBanner.jpg)

Penfeld is an User-Interface (UI) definition model framework for Pharo.
Main principe of Penfeld is to be apart of UI technologies or engine.

Penfeld provide instanciation of his model to some supported UI engine in Pharo (as Bloc, etc.) based on standard UI customization (as CSS, SVG, etc.).

## Getting Started

### Installing Penfeld

#### For Pharo 8 and Pharo 9

```Smalltalk
Metacello new
   baseline: 'Penfeld';
   repository: 'github://OpenSmock/Penfeld/src';
   load
```

#### For Pharo 8 and Pharo 9 - Only Penfeld core (without graphic engine)

```Smalltalk
Metacello new
   baseline: 'PenfeldCore';
   repository: 'github://OpenSmock/Penfeld/src';
   load
```

### Examples

Some examples are available supporting Bloc engine.
See `Penfeld-Bloc` package, `Examples` tag contains somes examples classes.

### Tests

See `Penfeld-Bloc-Tests` or execute `PenExamplesViewer>>#open`.

## Credits

* **Alain Plantec** - *Initial work* - [plantec](https://github.com/plantec)
* **Nolwenn Fournier** - *Initial work* - [nolwennfournier](https://github.com/nolwennfournier)
* **Eric Le Pors** - *Initial work* - [ELePors](https://github.com/ELePors)
* **Pierre Laborde** - *Initial work* - [labordep](https://github.com/labordep)
* **Steven Costiou** - *Initial work* - [StevenCostiou](https://github.com/StevenCostiou)
* **Glenn Cavarle** - *Pharo Stylesheet* - [GlennCavarle](https://github.com/GlennCavarle)

## License

This project is licensed under the MIT License.

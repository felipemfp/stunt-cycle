# Stunt Cycle

:bicyclist: Stunt Cycle made in MIPS Assembly

## Demo

![Demo](https://cdn.rawgit.com/felipemfp/stunt-cycle/cab4f2cc/demo.gif)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

What things you need to run this game:

- Java Runtime Environment
- [MARS](http://courses.missouristate.edu/kenvollmar/mars/)

Clone or [download zip](https://github.com/felipemfp/stunt-cycle/archive/master.zip) from GitHub:

```
git clone https://github.com/felipemfp/stunt-cycle
```

### Running

Open `stunt-cycle.asm` on __MARS__.

Open a __Keyboard and Display MMIO Simulator__ in _Tools_.

Configure a __Bitmap Display__ after open in _Tools_:

- Unit width in pixels: `4`
- Unit height in pixels: `4`
- Display width in pixels: `512`
- Display height in pixels: `512`
- Base address: `0x1001000`

### Controls

- <kbd>A</kbd> and <kbd>D</kbd> to navigate
- <kbd>Space</kbd> to accelerate
- <kbd>Esc</kbd> to quit

## Authors

* **Felipe Pontes** - *Initial work* - [felipemfp](https://github.com/felipemfp)

See also the list of [contributors](https://github.com/felipemfp/stunt-cycle/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


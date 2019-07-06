# Path Tree Viewer

Displays a given list of paths and displays them as a tree.  
This application does not interact with the filesystem in any way.  
It's simply a string/text processor.

Paths can be read from both command-line arguments as well as from standard input.

## Installation

> TODO

## Usage

```
$ path_tree_viewer hello/world foo/bar/baz                                                                                                                                                                                                     Insert zsh 1 master 2019-07-06 5:51 PM
/
  hello
    world
  foo
    bar
      baz
```

```
$ path_tree_viewer --help
Usage: path_tree_viewer [OPTIONS] PATHS...

Displays a given list of paths and displays them as a tree.
This application does not interact with the filesystem in any way.
It's simply a string/text processor.

ARGUMENTS

    PATHS                            Paths to display as a tree
                                     Paths can also be read from STDIN

OPTIONS
    -h, --help                       Show help
    -v, --version                    Show version
    -d, --delimiter VALUE            Path delimiter (default: '/')
    -I, --indent-char VALUE          Character to use for indentation (default: ' ')
    -i, --indent-size VALUE          Size for each indentation level (default: '2')
```

## Contributing

1. Fork it (<https://github.com/RyanScottLewis/path_tree_viewer/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

This program is available as open source under the terms of the MIT License <http://opensource.org/licenses/MIT>.


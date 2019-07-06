# Path Tree Viewer

Displays a given list of paths and displays them as a tree.  
This application does not interact with the filesystem in any way.  
It's simply a string/text processor.

Paths can be read from both command-line arguments as well as from standard input.

## Installation

> TODO

## Usage

```
$ path_tree_viewer hello/world foo/bar/baz
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

### Tipes & Tricks

View all directories within a path recursively, in a sorted manner:

`find /srv/share -type d | sort | path_tree_viewer`

View the contents of a (compressed) archive:

`tar -tf archive.tar.gz | path_tree_viewer`

View the contents of a JAR:

`jar tf archive.jar | path_tree_viewer`

### FAQ

*Why not use `tree`?*

This application is designed to manipulate text strings, as opposed to `tree` which will read the
filesystem. This allows users to view the result of many operations concatenated into a single file
or pipe directly from other commands, such as `find`, which can be quite complex (using
functionality `tree` does not have.)

### TODO

- [x] Parse & print paths as a tree from arguments & STDIN
- [ ] `--format` option with support for both YAML and JSON
- [ ] Graphviz `dot` format output (and if so, allow to generate image)
- [ ] Gource-like image output?
- [ ] Gem package
- [ ] Pacman package (?)

## Contributing

1. Fork it (<https://github.com/RyanScottLewis/path_tree_viewer/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

This program is available as open source under the terms of the MIT License <http://opensource.org/licenses/MIT>.


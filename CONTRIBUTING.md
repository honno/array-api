# Contributing to the Array API Standard

Thank you for your interest in contributing!

If you would like to contribute textual clarifications or other "maintenance
type" changes, please open a pull request on the
https://github.com/data-apis/array-api repository.

If you would like to add more functionality to the Array API Standard, please
take note of:
- the Scope section of the standard
- the [document outlining the Consortium's Process for standardization](https://github.com/data-apis/governance/blob/master/process_document.md)
before opening a pull request. If your proposed addition seems in scope,
opening an issue for discussion may be more appropriate as a first step.


## Building the spec locally

The spec website comprises of multiple Sphinx docs (one for each spec version),
all of which exist in `spec/` and rely on the modules found in `src/` (most
notably `array_api_stubs`). To install these modules and the additional
dependencies of the Sphinx docs, you can use

```sh
$ pip install -e .[doc]  # ensure you install the dependencies extra "doc"
```

To build specific versions of the spec, run `sphinx-build` on the respective
folder in `spec/`, e.g.

```sh
$ sphinx-build spec/draft/ _site/draft/
```

To build the whole website, which includes every version of
the spec, you can utilize the `make` commands defined in `spec/Makefile`, e.g.

```sh
$ make
$ ls _site/
2021.12/  draft/  index.html  latest/  versions.json
```


## Acknowledgements

We recognize all types of contributions. This project follows the
[all-contributors](https://github.com/all-contributors/all-contributors)
specification. Please add yourself to the list of contributors when you make
a contribution. You can do this by posting a comment with the text:
`@all-contributors please add @YOUR-USERNAME for THING(S)` (`THING` is one of
[these keys](https://allcontributors.org/docs/en/emoji-key)) and our nice bot
will add you.


## Reporting issues

Please use the [issue tracker](https://github.com/data-apis/array-api/issues)
for reporting issues with the published Array API Standard.

Please note that *implementation* issues should be reported to the project
implementing the standard.

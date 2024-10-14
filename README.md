# Python Package Template
Skeleton to create a new python Package

## Prerequisites
* Poetry
* Python 3.10+

## Poetry
The package leverates `Poetry` as the dependency manager. It provides some useful benefits over standard `pip`; the main one being better dependency resolution.

### Poetry Quick Guide

**Add a new package**

Instead of doing `pip install xxx` do `poetry add xxx`

**Run the virtual environment**

Instead of doing `source /path/to/virtual/env` you can do `poetry shell`

## Package Development
To develop the package (as opposed to using the package) you will need to install the `dev` group of the package. To achieve this, on your terminal run the following commands 
```bash
poetry install --with dev     # Install the required testing dependencies
poetry shell                  # If you'd like a virtual env using the packages
```

When you're ready to commit, you can leverage the defined `make` command to check for linting and other python standards. Run `make lint` to review the results

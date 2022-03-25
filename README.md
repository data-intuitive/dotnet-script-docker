# dotnet-script Docker Image

[![Build status](https://github.com/data-intuitive/ghcr_dotnet-script/workflows/CI/badge.svg)](https://github.com/data-intuitive/ghcr_dotnet-script/actions)

This is a [Docker image](https://hub.docker.com/r/ghcr.io/data-intuitive/dotnet-script/) containing the latest version of dotnet-script.


## Runing scripts

Example, shows the version of the dotnet script, 1.2.1 at the time of writing:

```shell
docker run --rm -it ghcr.io/data-intuitive/dotnet-script --version

1.2.1
```

Running the script `foo.csx` with one argument:

```shell
docker run --rm -it --volume="$PWD:/scripts:ro" ghcr.io/data-intuitive/dotnet-script foo.csx -- arg1
```

For further information, see [dotnet-script's own readme](https://github.com/filipw/dotnet-script/blob/master/README.md).

## Building the image locally

Standing in this folder, use the following command to build the image locally:

```shell
docker build -t ghcr.io/data-intuitive/dotnet-script:tag .
```

Where `:tag` is an optional version number, like `:1.2.1`.

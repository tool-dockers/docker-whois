# Quick reference

-	**Maintained by**:
	[tool-dockers](https://github.com/tool-dockers/docker-whois)

-	**Where to get help**:
	[the tool-dockers Community Slack][slack]

# Supported tags and respective `Dockerfile` links

-	[`latest` (*Dockerfile*)](https://github.com/tool-dockers/docker-whois/blob/master/Dockerfile)

# Quick reference (cont.)

-	**Where to get help**:
	[the Continuul Solutions online doc](http://doc.tool-dockers.com/), [the Continuul Solutions Support Organization](https://support.tool-dockers.com/)

-	**Where to file issues**:
	[https://github.com/tool-dockers/docker-whois/issues](https://github.com/tool-dockers/docker-whois/issues)

-	**Maintained by**:
	[the Continuul Solutions Team](https://github.com/tool-dockers/docker-whois)

-	**Supported architectures**: ([more info](https://github.com/docker-library/official-images#architectures-other-than-amd64))
	[`amd64`](https://hub.docker.com/r/amd64/whois/)

-	**Source of this description**:
	[docs repo's `tool-dockers/` directory](https://github.com/tool-dockers/docker-whois/tree/master) ([history](https://github.com/tool-dockers/docker-whois/commits/master))

-	**Supported Docker versions**:
	[the latest release](https://github.com/docker/docker-ce/releases/latest) (down to 1.6 on a best-effort basis)

# What is whois?

This package provides a commandline client for the **WHOIS (RFC 3912)** protocol, which queries online servers for information such as contact details for domains and IP address assignments. It can intelligently select the appropriate WHOIS server for most queries.

# How to use this image

## whois

To search for an object in a RFC 3912 database:

```console
docker run --name whois --rm tool-dockers/whois:latest iana.org
```

# License

View [license information](https://raw.githubusercontent.com/tool-dockers/docker-whois/master/LICENSE) for the software contained in this image.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.

## License

[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

## About

[tool-dockers][website] maintains and funds this project.

  [logo]: https://avatars3.githubusercontent.com/u/57697117?s=60&v=4
  [website]: https://continuul.solutions
  [slack]: https://continuul.slack.com

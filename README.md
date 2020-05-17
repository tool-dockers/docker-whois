# Supported tags and respective `Dockerfile` links

-	[`latest` (*Dockerfile*)](https://github.com/tool-dockers/docker-whois/blob/master/Dockerfile)

# Quick reference

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

The package also contains **mkpasswd**, a features-rich front end to the password encryption function crypt(3).

# How to use this image

## whois

To search for an object in a RFC 3912 database:

```console
docker run --name whois --rm tool-dockers/whois:latest iana.org
```

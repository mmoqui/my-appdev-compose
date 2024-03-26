# My App & Dev env compose

The goal is to define a Docker Compose recipe with which all the development environment to develop and build [`my-app-view`](https://github.com/mmoqui/my-app-view) application is bootstrapped.

This development environment is made up of:

- The [`my-app-node`](https://github.com/mmoqui/my-app-node) application listening to HTTP requests from [`my-app-view`](https://github.com/mmoqui/my-app-view)
- A PostgreSQL database used by [`my-app-node`](https://github.com/mmoqui/my-app-node) application as data storage
- An [Apache 2](https://github.com/mmoqui/my-apache) serving as a reverse proxy for [`my-app-node`](https://github.com/mmoqui/my-app-node) application and to serve the HTML pages of [`my-app-view`](https://github.com/mmoqui/my-app-view) project
- The [`my-app-view`](https://github.com/mmoqui/my-app-view) project cloned into a [running container](https://github.com/mmoqui/my-dev-env) and whose the build directory is mounted into the [Apache 2 container](https://github.com/mmoqui/my-apache) so that latter can serve the output of the project.

The idea here is to illustrate with a simple example how to bootstrap a complete development environment for web application depending on anothers services/applicationds.

This is for the training on Docker for dev.
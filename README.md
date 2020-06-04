# Tag My Outfit - gRPC Interface

## Overview

This project defines the gRPC interface for the Tag My Outfit Service. The service aims to classify clothing parts within a set a categories as well as predict attributes for such parts.

This interface is implemented by a gRPC server with the service above mentioned and can be used by the clients to communicate with such server.

## Usage

### Python package

#### Install

This project offers a python package with the gRPC generated sources. The package can be installed locally by executing the following steps:

 * Clone the github repository:

 ```
 $ git clone -b v0.0.1 https://github.com/DuarteMRAlves/tag_my_outfit_interface.git
 ```

 * Inside the project folder, navigate to the python folder:

 ```
 $ cd python
 ```

 * Install the package:

 ```
 $ make
 ```

 * Remove the generated gRPC sources *(This is a cleaning step and is not necessary for the package installation)*:

 ```
 $ make clean_sources
 ```

#### Uninstall

The package can be uninstalled by execution one of the following options:

 * Using pip:

 ```
 $ pip uninstall -y outfit-tagging-interface
 ```

 * Using the provided Makefile inside the python folder:

 ```
 $ make uninstall
 ```

### Compilation with proto compiler

The project [service proto file](proto/outfit_tagging/interface/service.proto) can also be downloaded and manually compiled with the proto compiler for any supported language.

## gRPC Framework

This project is built with the [gRPC framework](https://grpc.io), from google, which offers a stable development platform for efficient rpc calls, with multiple supported languages.

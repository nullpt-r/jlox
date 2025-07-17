<h1 align=center><code>jlox</code></h1>
<br>

`jlox` is a programming language mode in Java based on the Java part of [Crafting Interpreters](https://www.craftinginterpreters.com/)

# Building
## Prerequisites

- [just](https://github.com/casey/just)
- maven
- JDK 21+

## *nix and Windows with MinGW/Cygwin\*
```sh
just build
```
\* This is untested on Windows, if it fails use the other method

## Windows
To use on Windows add
```just
set shell := ["powershell.exe", "-c"]
```
to the `justfile`

```powershell
just clean
just jar
```
This will give you only a JAR not since it is not merging `stub.sh` with the JAR file.
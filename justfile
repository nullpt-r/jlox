host := `uname -a`

name := "jlox"
out := "out/jlox"
version := "0.2.0"

build: jar
    mkdir -p out
    cat stub.sh target/{{name}}-{{version}}.jar > {{out}} && chmod +x {{out}}

clean:
    mvn clean
    rm -r out

jar:
    mvn package

install: build
    sudo cp {{out}} /usr/local/bin
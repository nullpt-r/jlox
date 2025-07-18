host := `uname -a`

build: clean jar
    cat stub.sh target/jlox-1.0-SNAPSHOT.jar > jlox && chmod +x jlox

clean:
    mvn clean

jar:
    mvn package

install: build
    sudo cp jlox /usr/local/bin
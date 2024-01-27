.SERVER := dist/bpm-server

PHONY: all clean run

all: clean run

$(SERVER):
	go build -o $@ ./cmd/server/...

run: $(SERVER)
	$<
	python3 -m http.server --directory web/dist/

clean:
	rm -f $(SERVER)

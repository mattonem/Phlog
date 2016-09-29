grammar
em
^ $_ asParser , (#newline asParser/ $_ asParser) negate star, $_ asParser ==> [:node | PMdEm from: node]
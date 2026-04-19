FROM pandoc/core:latest AS builder

WORKDIR /build
COPY src/notes/ notes/
COPY src/templates/ templates/

RUN mkdir -p out/notes && \
    for file in notes/*.md; do \
        filename=$(basename "$file" .md); \
        pandoc "$file" -s \
            --lua-filter=templates/wrap_inline_math.lua \
            --template=templates/template.html \
            -o "out/notes/$filename.html" \
            --mathjax \
            --metadata title="$filename"; \
    done

FROM nginx:alpine

COPY --from=builder /build/out/notes/ /usr/share/nginx/html/notes/
COPY src/index.html /usr/share/nginx/html/
COPY src/pages/ /usr/share/nginx/html/pages/
COPY assets/ /usr/share/nginx/html/assets/
# static/ is volume-mounted at runtime

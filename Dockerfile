FROM oracle/graalvm-ce:19.3.2

RUN curl -O https://download.clojure.org/install/linux-install-1.10.1.536.sh && \
    bash linux-install-1.10.1.536.sh && \
    rm linux-install-1.10.1.536.sh

RUN curl -O https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein && \
    chmod +x lein && \
    mv lein /usr/bin/lein && \
    lein upgrade

RUN gu install native-image

CMD ["lein", "native-image"]

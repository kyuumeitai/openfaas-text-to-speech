FROM python:2.7.14-alpine3.6

RUN apk --no-cache add curl sudo \ 
    && echo "Pulling watchdog binary from Github." \
    && curl -sSL https://github.com/openfaas/faas/releases/download/0.6.9/fwatchdog > /usr/bin/fwatchdog \
    && chmod +x /usr/bin/fwatchdog

RUN sudo -H pip install gTTS

ENV cgi_headers true
ENV fprocess "sh script.sh"

COPY script.sh .
RUN chmod a+x script.sh

CMD ["fwatchdog"]

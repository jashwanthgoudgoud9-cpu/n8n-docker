FROM n8nio/n8n:latest

USER root

RUN apk update && \
    apk add --no-cache ffmpeg python3 py3-pip && \
    pip3 install edge-tts moviepy faster-whisper

ENV N8N_ENABLE_EXECUTE_COMMAND=true

USER node

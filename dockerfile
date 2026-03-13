FROM n8nio/n8n:latest

USER root

RUN apt-get update && \
    apt-get install -y ffmpeg python3 python3-pip && \
    pip3 install edge-tts moviepy faster-whisper

ENV N8N_ENABLE_EXECUTE_COMMAND=true

USER node

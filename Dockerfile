# Use lightweight Ubuntu image
FROM ubuntu:22.04

# Install ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean

# Copy start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Set environment variables
ENV VIDEO_URL ""
ENV STREAM_KEY ""

# Run the start script
CMD ["/start.sh"]

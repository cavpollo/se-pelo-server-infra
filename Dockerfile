FROM rust:1.75.0

# Copy local code to the container image.
WORKDIR /usr/src/app
COPY . .


ARG PROMPTS_PATH
ARG FINISHERS_PATH

ENV PROMPTS_PATH $PROMPTS_PATH
ENV FINISHERS_PATH $FINISHERS_PATH

# Install production dependencies and build a release artifact.
RUN cargo install --path .

# Run the web service on container startup.
CMD ["se_pelo"]

FROM rust:1.75.0

# Copy local code to the container image.
WORKDIR /usr/src/app
COPY . .

RUN mv ./code/* .

# Install production dependencies and build a release artifact.
RUN cargo install --path .

# Run the web service on container startup.
CMD ["se_pelo"]

FROM rust
ADD project /project
RUN  rustup target add thumbv7em-none-eabihf
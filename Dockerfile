FROM rust
ADD project /project
RUN  rustup target add thumbv7em-none-eabihf
WORKDIR /project/upstream_lib/my_lib
RUN cargo build --target thumbv7em-none-eabihf
WORKDIR /project/downstream_application/some_application
RUN cargo build --target thumbv7em-none-eabihf

# This works as a reminder of what needs to be instaleld an done
# Clean this up and put it into the appropriate place later

# Setup up environment for embedded rust for RP2040
# You need to have rustup installed

# ensure you have the latest stable version of Rust installed, along with the right target support:
rustup self update
rustup update stable
rustup target add thumbv6m-none-eabi

# install these helpful tools:
# Useful to creating UF2 images for the RP2040 USB Bootloader
cargo install elf2uf2-rs --locked
# Useful for flashing over the SWD pins using a supported JTAG probe
cargo install probe-run

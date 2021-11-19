# Xfce4 dunst Plugin

----------

This plugin is probably completely useless.

It's just dunstctl-turned-into-xfce4-panel-plugin.

### Installation Instruction
* If you have makepkg
  ```sh
  makepkg -si
  ```

* Else
  ```sh
  cmake -S . -B build -DCMAKE_INSTALL_PREFIX=/usr
  make -C build install
  ```
* Or
  ```sh
  meson --prefix=/usr build
  ninja -C build install
  ```

### FAQs
* Q: Why does this exist? <br />
  A: Why shouldn't this exist?
* Q: Should I use it?<br />
  A: Probably, you know better than me.
* Q: What is dunst?<br />
  A: If you don't know it, you don't need it, probably.
* Q: Why did you create it?<br />
  A: I had nothing better to do.
* Q: Where can I learn more about dunst?<br />
  A: [here you go](https://is.gd/oZYAcc "DUNST")
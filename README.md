![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)


# Can't generate final GDS

`gds\controller.gds` was hardened by OpenLane (see `macroharden.sh` and `openlane/...`), and I wanted to place it int he top layout.

I have done the following as I've done many times before with sky130 designs: First, launch Magic inside `magic/`, then...

```tcl
gds readonly true
gds read ../gds/controller.gds
writeall force controller
```

...which created `magic/controller.mag` but when I place that cell as an instance in my main `magic/tt_um_algofoogle_antonalog.mag` design file, and try to expand that cell, it lists every standard sg13g2 cell by name saying that it is missing.
Because of that, I can't stream out a complete GDS file from my top .mag file.

Otherwise, I'd expect it to be a simple matter of:

```bash
cd magic/
make update_gds
```

...and the LEF and GDS should be written out.

Need to figure out what's going on here. Maybe:

*   There's a way to make sure Magic knows how to find the cells both before and after these steps?
*   Don't need to use this "gds readonly true" method with IHP PnR GDS?

# Also outstanding

*   I didn't do any LVS
*   Output buffer cells going into the DACs are meant to be buf_16, but OpenLane is resizing them even though I configured it not to.
*   No simulation done (though the Verilog was mostly tested in preparing TT08)


# ANTONalog -- A ttihp0p3 (Tiny Tapeout IHP) test project 

This isn't really anything yet. It will hopefully be Anton's Analog experiment on Tiny Tapeout IHP.

- [Read the documentation for this project](docs/info.md)


## What is Tiny Tapeout?

Tiny Tapeout is an educational project that aims to make it easier and cheaper than ever to get your digital designs manufactured on a real chip.

To learn more and get started, visit https://tinytapeout.com.


## Analog projects

For TT analog specifications and instructions, see the [analog specs page](https://tinytapeout.com/specs/analog/).


## Enable GitHub actions to build the results page

- [Enabling GitHub Pages](https://tinytapeout.com/faq/#my-github-action-is-failing-on-the-pages-part)


## Resources

- [FAQ](https://tinytapeout.com/faq/)
- [Digital design lessons](https://tinytapeout.com/digital_design/)
- [Learn how semiconductors work](https://tinytapeout.com/siliwiz/)
- [Join the community](https://tinytapeout.com/discord)


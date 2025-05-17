![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)



# ANTONalog -- A ttihp0p3 (Tiny Tapeout IHP) test project 

Anton's Analog experiment (analog VGA generator) on Tiny Tapeout IHP.

- [Read the documentation for this project](docs/info.md)


# Outstanding

*   I didn't complete LVS, due to 2 main issues: `rhigh` extraction seems to have problems, possibly because the resistor is not understood by netgen to be symmetrical (so pin matching fails?); and `sg13g2_tiehi` also seems to have a problem with Magic extraction (and/or Netgen LVS). It might be possible hack both of these, though.
*   No simulation done (though the Verilog was mostly tested in preparing TT08)


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


if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded zlibtcl 1.3.2 [list load [file join $dir tcl9zlibtcl132.dll]]
} else {
    package ifneeded zlibtcl 1.3.2 [list load [file join $dir zlibtcl132.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded pngtcl 1.6.58 [list load [file join $dir tcl9pngtcl1658.dll]]
} else {
    package ifneeded pngtcl 1.6.58 [list load [file join $dir pngtcl1658.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded tifftcl 4.7.2 [list load [file join $dir tcl9tifftcl472.dll]]
} else {
    package ifneeded tifftcl 4.7.2 [list load [file join $dir tifftcl472.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded jpegtcl 10.0.0 [list load [file join $dir tcl9jpegtcl1000.dll]]
} else {
    package ifneeded jpegtcl 10.0.0 [list load [file join $dir jpegtcl1000.dll]]
}
# -*- tcl -*- Tcl package index file
# --- --- --- Handcrafted, final generation by configure.

if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::base 2.1.2 [list load [file join $dir tcl9tkimg212.dll]]
} else {
    package ifneeded img::base 2.1.2 [list load [file join $dir tkimg212.dll]]
}
# Compatibility hack. When asking for the old name of the package
# then load all format handlers and base libraries provided by tkImg.
# Actually we ask only for the format handlers, the required base
# packages will be loaded automatically through the usual package
# mechanism.

# When reading images without specifying it's format (option -format),
# the available formats are tried in reversed order as listed here.
# Therefore file formats with some "magic" identifier, which can be
# recognized safely, should be added at the end of this list.

package ifneeded Img 2.1.2 {
    package require img::window
    package require img::tga
    package require img::ico
    package require img::pcx
    package require img::sgi
    package require img::sun
    package require img::xbm
    package require img::xpm
    package require img::jpeg
    package require img::png
    package require img::tiff
    package require img::bmp
    package require img::ppm
    package require img::pixmap
    package provide Img 2.1.2
}

if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::bmp 2.1.2 [list load [file join $dir tcl9tkimgbmp212.dll]]
} else {
    package ifneeded img::bmp 2.1.2 [list load [file join $dir tkimgbmp212.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::gif 2.1.2 [list load [file join $dir tcl9tkimggif212.dll]]
} else {
    package ifneeded img::gif 2.1.2 [list load [file join $dir tkimggif212.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::ico 2.1.2 [list load [file join $dir tcl9tkimgico212.dll]]
} else {
    package ifneeded img::ico 2.1.2 [list load [file join $dir tkimgico212.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::jpeg 2.1.2 [list load [file join $dir tcl9tkimgjpeg212.dll]]
} else {
    package ifneeded img::jpeg 2.1.2 [list load [file join $dir tkimgjpeg212.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::pcx 2.1.2 [list load [file join $dir tcl9tkimgpcx212.dll]]
} else {
    package ifneeded img::pcx 2.1.2 [list load [file join $dir tkimgpcx212.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::pixmap 2.1.2 [list load [file join $dir tcl9tkimgpixmap212.dll]]
} else {
    package ifneeded img::pixmap 2.1.2 [list load [file join $dir tkimgpixmap212.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::png 2.1.2 [list load [file join $dir tcl9tkimgpng212.dll]]
} else {
    package ifneeded img::png 2.1.2 [list load [file join $dir tkimgpng212.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::ppm 2.1.2 [list load [file join $dir tcl9tkimgppm212.dll]]
} else {
    package ifneeded img::ppm 2.1.2 [list load [file join $dir tkimgppm212.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::ps 2.1.2 [list load [file join $dir tcl9tkimgps212.dll]]
} else {
    package ifneeded img::ps 2.1.2 [list load [file join $dir tkimgps212.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::sgi 2.1.2 [list load [file join $dir tcl9tkimgsgi212.dll]]
} else {
    package ifneeded img::sgi 2.1.2 [list load [file join $dir tkimgsgi212.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::sun 2.1.2 [list load [file join $dir tcl9tkimgsun212.dll]]
} else {
    package ifneeded img::sun 2.1.2 [list load [file join $dir tkimgsun212.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::tga 2.1.2 [list load [file join $dir tcl9tkimgtga212.dll]]
} else {
    package ifneeded img::tga 2.1.2 [list load [file join $dir tkimgtga212.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::tiff 2.1.2 [list load [file join $dir tcl9tkimgtiff212.dll]]
} else {
    package ifneeded img::tiff 2.1.2 [list load [file join $dir tkimgtiff212.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::window 2.1.2 [list load [file join $dir tcl9tkimgwindow212.dll]]
} else {
    package ifneeded img::window 2.1.2 [list load [file join $dir tkimgwindow212.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::xbm 2.1.2 [list load [file join $dir tcl9tkimgxbm212.dll]]
} else {
    package ifneeded img::xbm 2.1.2 [list load [file join $dir tkimgxbm212.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::xpm 2.1.2 [list load [file join $dir tcl9tkimgxpm212.dll]]
} else {
    package ifneeded img::xpm 2.1.2 [list load [file join $dir tkimgxpm212.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::dted 2.1.2 [list load [file join $dir tcl9tkimgdted212.dll]]
} else {
    package ifneeded img::dted 2.1.2 [list load [file join $dir tkimgdted212.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::raw 2.1.2 [list load [file join $dir tcl9tkimgraw212.dll]]
} else {
    package ifneeded img::raw 2.1.2 [list load [file join $dir tkimgraw212.dll]]
}
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded img::flir 2.1.2 [list load [file join $dir tcl9tkimgflir212.dll]]
} else {
    package ifneeded img::flir 2.1.2 [list load [file join $dir tkimgflir212.dll]]
}

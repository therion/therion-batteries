package ifneeded zlibtcl 1.2.11 \
    [list load [file join $dir zlibtcl1211.dll]]
package ifneeded pngtcl 1.6.37 \
    [list load [file join $dir pngtcl1637.dll]]
package ifneeded tifftcl 4.1.0 \
    [list load [file join $dir tifftcl410.dll]]
package ifneeded jpegtcl 9.4.0 \
    [list load [file join $dir jpegtcl940.dll]]
# -*- tcl -*- Tcl package index file
# --- --- --- Handcrafted, final generation by configure.

package ifneeded img::base 1.4.13 [list load [file join $dir tkimg1413.dll]]

# Compatibility hack. When asking for the old name of the package
# then load all format handlers and base libraries provided by tkImg.
# Actually we ask only for the format handlers, the required base
# packages will be loaded automatically through the usual package
# mechanism.

# When reading images without specifying it's format (option -format),
# the available formats are tried in reversed order as listed here.
# Therefore file formats with some "magic" identifier, which can be
# recognized safely, should be added at the end of this list.

package ifneeded Img 1.4.13 {
    package require img::window
    package require img::tga
    package require img::ico
    package require img::pcx
    package require img::sgi
    package require img::sun
    package require img::xbm
    package require img::xpm
    package require img::ps
    package require img::jpeg
    package require img::png
    package require img::tiff
    package require img::bmp
    package require img::ppm
    package require img::gif
    package require img::pixmap
    package provide Img 1.4.13
}

package ifneeded img::bmp 1.4.13 \
    [list load [file join $dir tkimgbmp1413.dll]]
package ifneeded img::gif 1.4.13 \
    [list load [file join $dir tkimggif1413.dll]]
package ifneeded img::ico 1.4.13 \
    [list load [file join $dir tkimgico1413.dll]]
package ifneeded img::jpeg 1.4.13 \
    [list load [file join $dir tkimgjpeg1413.dll]]
package ifneeded img::pcx 1.4.13 \
    [list load [file join $dir tkimgpcx1413.dll]]
package ifneeded img::pixmap 1.4.13 \
    [list load [file join $dir tkimgpixmap1413.dll]]
package ifneeded img::png 1.4.13 \
    [list load [file join $dir tkimgpng1413.dll]]
package ifneeded img::ppm 1.4.13 \
    [list load [file join $dir tkimgppm1413.dll]]
package ifneeded img::ps 1.4.13 \
    [list load [file join $dir tkimgps1413.dll]]
package ifneeded img::sgi 1.4.13 \
    [list load [file join $dir tkimgsgi1413.dll]]
package ifneeded img::sun 1.4.13 \
    [list load [file join $dir tkimgsun1413.dll]]
package ifneeded img::tga 1.4.13 \
    [list load [file join $dir tkimgtga1413.dll]]
package ifneeded img::tiff 1.4.13 \
    [list load [file join $dir tkimgtiff1413.dll]]
package ifneeded img::window 1.4.13 \
    [list load [file join $dir tkimgwindow1413.dll]]
package ifneeded img::xbm 1.4.13 \
    [list load [file join $dir tkimgxbm1413.dll]]
package ifneeded img::xpm 1.4.13 \
    [list load [file join $dir tkimgxpm1413.dll]]
package ifneeded img::dted 1.4.13 \
    [list load [file join $dir tkimgdted1413.dll]]
package ifneeded img::raw 1.4.13 \
    [list load [file join $dir tkimgraw1413.dll]]
package ifneeded img::flir 1.4.13 \
    [list load [file join $dir tkimgflir1413.dll]]

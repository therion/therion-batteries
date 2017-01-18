# Tcl package index file - handcrafted

package ifneeded zlibtcl 1.0 [list load [file join $dir zlibtcl10.dll]]
package ifneeded pngtcl 1.0 [list load [file join $dir pngtcl10.dll]]
package ifneeded jpegtcl 1.0 [list load [file join $dir jpegtcl10.dll]]
package ifneeded img::base 1.3 [list load [file join $dir tkimg13.dll]]

package ifneeded Img   1.3 {
    # Compatibility hack. When asking for the old name of the package
    # then load all format handlers and base libraries provided by tkImg.
    # Actually we ask only for the format handlers, the required base
    # packages will be loaded automatically through the usual package
    # mechanism.

    # When reading images without specifying it's format (option -format),
    # the available formats are tried in reversed order as listed here.
    # Therefore file formats with some "magic" identifier, which can be
    # recognized safely, should be added at the end of this list.

    package require img::jpeg
    package require img::png

    package provide Img 1.3
}


package ifneeded "img::jpeg" 1.3 [list load [file join $dir tkimgjpeg13.dll]]
package ifneeded "img::png" 1.3 [list load [file join $dir tkimgpng13.dll]]

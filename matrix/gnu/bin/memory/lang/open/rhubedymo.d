module matrix.gnu.bin.memory.openware.lang.open.rhubedymo;

import std.stdio;
import std.string;
import std.range;
import std.algorithm;
import std.array;
import std.conv;
import std.file;

class OpenWare {
    string name;
    double ware;
    
    this(string name, double ware) {
        this.name = name;
        this.ware = ware;
    }

    void displayInfo() {
        writeln("OpenWare Name: ", name);
        writeln("Version: ", ware);
    }
}
class OpenWareManager {
    private OpenWare[] openWares;

    this() {
        openWares = [];
    }

    void addOpenWare(string name, double ware) {
        auto newWare = new OpenWare(name, ware);
        openWares ~= newWare;
    }

    void displayAllOpenWares() {
        foreach (openWare; openWares) {
            openWare.displayInfo();
            writeln();
        }
    }
}
void main() {
    auto manager = new OpenWareManager();
    
    // Adding some OpenWares
    manager.addOpenWare("OpenWare 1", 1.0);
    manager.addOpenWare("OpenWare 2", 2.0);
    manager.addOpenWare("OpenWare 3", 3.0);
    
    // Displaying all OpenWares
    writeln("All OpenWares:");
    manager.displayAllOpenWares();
}
// This code defines a simple OpenWare management system in D.
// It allows adding and displaying information about different OpenWares.
// This code defines a simple OpenWare management system in D.
// It allows adding and displaying information about different OpenWares.
// This code defines a simple OpenWare management system in D.
// It allows adding and displaying information about different OpenWares.

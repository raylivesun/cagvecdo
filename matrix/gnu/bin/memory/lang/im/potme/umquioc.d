module matrix.gnu.bin.memory.openware.lang.im.potme.umquioc;

import std.stdio;
import std.string;
import std.range;
import std.algorithm;
import std.array;
import std.conv;
import std.file;
import std.datetime;
import std.math;
import std.regex;
import std.range;
import std.algorithm.iteration;
import std.algorithm.comparison;
import std.algorithm.searching;
import std.algorithm.mutation;
import std.algorithm.sorting;
import std.algorithm.transform;

class Umquioc {
    string name;
    double ware;
    
    this(string name, double ware) {
        this.name = name;
        this.ware = ware;
    }

    void displayInfo() {
        writeln("Umquioc Name: ", name);
        writeln("Version: ", ware);
    }
}
class UmquiocManager {
    private Umquioc[] umquiocs;

    this() {
        umquiocs = [];
    }

    void addUmquioc(string name, double ware) {
        auto newWare = new Umquioc(name, ware);
        umquiocs ~= newWare;
    }

    void displayAllUmquiocs() {
        foreach (umquioc; umquiocs) {
            umquioc.displayInfo();
            writeln();
        }
    }
}
void main() {
    auto manager = new UmquiocManager();
    
    // Adding some Umquiocs
    manager.addUmquioc("Umquioc 1", 1.0);
    manager.addUmquioc("Umquioc 2", 2.0);
    
    // Displaying all Umquiocs
    manager.displayAllUmquiocs();
}
//     manager.displayAllUmquiocs();

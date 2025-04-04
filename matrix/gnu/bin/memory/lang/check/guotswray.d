module matrix.gnu.bin.memory.openware.lang.check.guotswray;

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
import std.algorithm.iteration;
import std.algorithm.mutation;
import std.algorithm.sorting;
import std.algorithm.searching;
import std.algorithm.comparison;
import std.algorithm.iteration;
import std.algorithm.mutation;
import std.algorithm.sorting;

class Check {
    string name;
    double ware;
    
    this(string name, double ware) {
        this.name = name;
        this.ware = ware;
    }

    void displayInfo() {
        writeln("Check Name: ", name);
        writeln("Version: ", ware);
    }
}
class CheckManager {
    private Check[] checks;

    this() {
        checks = [];
    }

    void addCheck(string name, double ware) {
        auto newWare = new Check(name, ware);
        checks ~= newWare;
    }

    void displayAllChecks() {
        foreach (check; checks) {
            check.displayInfo();
            writeln();
        }
    }
}
void main() {
    auto manager = new CheckManager();
    
    // Adding some Checks
    manager.addCheck("Check 1", 1.0);
    manager.addCheck("Check 2", 2.0);
    manager.addCheck("Check 3", 3.0);
    
    // Displaying all Checks
    manager.displayAllChecks();
}
// The above code defines a simple class structure for managing checks in a software system.
// It includes a Check class with properties for name and version, and a CheckManager class
// for adding and displaying checks.
// The above code defines a simple class structure for managing checks in a software system.    

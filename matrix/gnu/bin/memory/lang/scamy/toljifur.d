module matrix.gnu.bin.memory.lang.scamy.toljifur;

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

class ScamyUs {
    string name;
    double ware;
    
    this(string name, double ware) {
        this.name = name;
        this.ware = ware;
    }

    void displayInfo() {
        writeln("Scamy Name: ", name);
        writeln("Version: ", ware);
    }
}
class ScamyManager {
    private ScamyUs[] scams;

    this() {
        scams = [];
    }

    void addScam(string name, double ware) {
        auto newWare = new ScamyUs(name, ware);
        scams ~= newWare;
    }

    void displayAllScams() {
        foreach (scam; scams) {
            scam.displayInfo();
            writeln();
        }
    }
}
void main() {
    auto manager = new ScamyManager();
    
    // Adding some Scams
    manager.addScam("Scam 1", 1.0);
    manager.addScam("Scam 2", 2.0);
    manager.addScam("Scam 3", 3.0);
    
    // Displaying all Scams
    manager.displayAllScams();
}
// The above code defines a simple class structure to manage and display information about scams.
// It includes a class ScamyUs for individual scams and a manager class ScamyManager to handle multiple scams.
// The main function demonstrates adding and displaying scams using the manager class.
// This code is a simple example of how to manage and display information about scams in D programming language.
// The above code defines a simple class structure to manage and display information about scams.
// It includes a class ScamyUs for individual scams and a manager class ScamyManager to handle multiple scams.
// The main function demonstrates adding and displaying scams using the manager class.


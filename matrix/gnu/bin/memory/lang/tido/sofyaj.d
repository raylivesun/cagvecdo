module matrix.gnu.bin.memory.lang.tido.sofyaj;

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

class TidoBack {
    string name;
    double ware;
    
    this(string name, double ware) {
        this.name = name;
        this.ware = ware;
    }

    void displayInfo() {
        writeln("TidoBack Name: ", name);
        writeln("Version: ", ware);
    }
}

class TidoBackManager {
    private TidoBack[] tidos;

    this() {
        tidos = [];
    }

    void addTido(string name, double ware) {
        auto newWare = new TidoBack(name, ware);
        tidos ~= newWare;
    }

    void displayAllTidos() {
        foreach (tido; tidos) {
            tido.displayInfo();
            writeln();
        }
    }
}
void main() {
    auto manager = new TidoBackManager();
    
    // Adding some TidoBacks
    manager.addTido("Tido 1", 1.0);
    manager.addTido("Tido 2", 2.0);
    manager.addTido("Tido 3", 3.0);
    
    // Displaying all TidoBacks
    manager.displayAllTidos();
}
// The above code defines a class TidoBack and a manager class TidoBackManager to manage multiple TidoBack instances.
// The TidoBack class has a name and a version number, and the manager class can add new TidoBacks and display all of them.
// The main function demonstrates how to use the TidoBackManager to add and display TidoBack instances.
// The code is structured to be easily extensible and maintainable, following good programming practices.

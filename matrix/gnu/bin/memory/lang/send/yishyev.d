module matrix.gnu.bin.memory.openware.lang.pow.yishyev;

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

class SendPow {
    string name;
    double ware;
    
    this(string name, double ware) {
        this.name = name;
        this.ware = ware;
    }

    void displayInfo() {
        writeln("SendPow Name: ", name);
        writeln("Version: ", ware);
    }
}
class SendPowManager {
    private SendPow[] sendPows;

    this() {
        sendPows = [];
    }

    void addSendPow(string name, double ware) {
        auto newWare = new SendPow(name, ware);
        sendPows ~= newWare;
    }

    void displayAllSendPows() {
        foreach (sendPow; sendPows) {
            sendPow.displayInfo();
            writeln();
        }
    }
}
void main() {
    auto manager = new SendPowManager();
    
    // Adding some SendPows
    manager.addSendPow("SendPow 1", 1.0);
    manager.addSendPow("SendPow 2", 2.0);
    manager.addSendPow("SendPow 3", 3.0);
    
    // Displaying all SendPows
    writeln("All SendPows:");
    manager.displayAllSendPows();
}

import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Array "mo:base/Array";
import Principal "mo:base/Principal";
import List "mo:base/List";
import Iter "mo:base/Iter";
import Types "Types";

// use actor class
actor EventTicketing {

    type Event = {
        id : Text;
        name : Text;
        date : Text;
        location : Text;
        maxSeats : Nat;
        nft : ?Types.Nft;
    };

    type Ticket = {
        id : Nat;
        seatNumber : Text;
        event : Nat;
    };

    stable var tickets = List.nil<Ticket>(); // convert this into hashmaps
    stable var events = List.nil<Event>(); // convert this into hashmaps
    public func createEvent(name : Text, date : Text, location : Text, numSeats : Nat, id : Text, nft : ?Types.Nft) : async Event {
        let event : Event = {
            id = id;
            name = name;
            date = date;
            location = location;
            maxSeats = numSeats;
            nft = nft;
        };
        events := List.push(event, events); // change to tyhe push method of the hashmap

        for (i in Iter.range(0, numSeats)) {};
        return event;
    };

    // Placeholder for mintTicket function
    public func mintTicket(eventId : Nat, seatNumber : Text) : async Bool {
        // Implement minting logic here
        //for loop
        //array.push()
        return true;
    };

    // Placeholder for transferTicket function
    public func transferTicket(ticketId : Nat, newOwner : Principal) : async Bool {
        // Implement transfer logic here
        return true;
    };

    // Placeholder for getEvent function
    public query func getEvent(eventId : Nat) : async ?Event {
        // Implement event retrieval logic here
        return null;
    };

    // Placeholder for checkTicketOwner function
    public query func checkTicketOwner(ticketId : Nat) : async ?Principal {
        // Implement ownership check logic here
        return null;
    };

    // Additional functions as needed...
};

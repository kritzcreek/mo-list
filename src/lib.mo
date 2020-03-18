
import Option "mo:option";

module {
    public type List<A> = { #nil; #cons: { head: A; tail: List<A> } };

    public func head<A>(list: List<A>): ?A {
        switch(list) {
            case (#nil) null;
            case (#cons { head }) ?head;
        }
    };

    public func headOrElse<A>(list: List<A>, default: A): A {
        Option.orElse(head(list), default)
    }
}

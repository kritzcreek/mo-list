
mod {
    public type List<A> = { #nil; #cons({ head: A; tail: List<A> })};
}
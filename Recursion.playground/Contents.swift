//: Playground - Recursion

indirect enum List<T> {
    case empty
    case nonEmpty(head: T, tail: List<T>)
}

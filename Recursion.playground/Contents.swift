//: Playground - Recursion

indirect enum List<T> {
    case empty
    case nonEmpty(head: T, tail: List<T>)
}

let cart: List<Int> = .nonEmpty(
    head: 4, tail: .nonEmpty(
        head: 5, tail: .nonEmpty(
            head: 7, tail: .nonEmpty(
                head: 83, tail: .nonEmpty(
                    head: 3, tail: .nonEmpty(
                        head: 4, tail: .empty))))))

func totalCost(items: List<Int>, accumulator: Int) -> Int {
    switch items {
    case .empty:
        return accumulator
    case let .nonEmpty(head, tail):
        return totalCost(items: tail, accumulator: head + accumulator)
    }
}

totalCost(items: cart, accumulator: 0)

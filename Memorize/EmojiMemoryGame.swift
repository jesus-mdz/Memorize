import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static var emojis = ["🏵", "✈️", "💄", "🦺", "👨‍👩‍👦", "👗", "👫", "👔", "🩲", "👢", "💍", "👑", "🥎", "🥊", "🎽", "🛷", "🏄🏼‍♂️", "🚣🏾", "🎪"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: { index in emojis[index] })
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    func choose(_ card: Card) {
        model.choose(card)
    }
}

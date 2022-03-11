//
//  Quote.swift
//  StoicQuotes
//
//  Created by Drew Franz on 3/9/22.
//

import SwiftUI

struct Quote: Codable, Identifiable {
    var id: UUID {
        UUID()
    }
    let text: String
    let author: String
    
    #if DEBUG
    static let example = Quote(text: "After friendship is formed you must trust, but before that you must judge. Those people who, contrary to Theophrastus’ advice, judge a man after they have made him their friend instead of the other way round, certainly put the cart before the horse.", author: "Joe Example")
    #endif
}

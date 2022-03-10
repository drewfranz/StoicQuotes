//
//  StoicQuotesApp.swift
//  StoicQuotes
//
//  Created by Drew Franz on 3/9/22.
//

import SwiftUI

@main
struct StoicQuotesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(item: Quote.example)
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
    }
}

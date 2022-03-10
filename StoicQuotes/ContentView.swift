//
//  ContentView.swift
//  StoicQuotes
//
//  Created by Drew Franz on 3/9/22.
//

import SwiftUI

struct ContentView: View {
    let quotes = Bundle.main.decode([Quote].self, from: "quotes.json")
    @State var item: Quote

    var body: some View {
        VStack {
            QuoteView(item: item)
                .ignoresSafeArea()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.1, green: 0.1, blue: 0.1))
                .foregroundColor(Color(red:0.85,green:0.85,blue:0.85))
                .onAppear(perform: loadItem)
                .onTapGesture(perform: loadItem)
        }
    }
    
    func loadItem() {
        item = quotes.randomElement() ?? Quote.example
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(item: Quote.example)
        ContentView(item: Quote.example).preferredColorScheme(.dark)
    }
}

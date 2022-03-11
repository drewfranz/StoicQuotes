//
//  QuoteView.swift
//  StoicQuotes
//
//  Created by Drew Franz on 3/9/22.
//

import SwiftUI

struct QuoteView: View {
    var item: Quote

    var body: some View {
        VStack {
            Spacer()
            Text(item.text)
                .italic()
                .font(.system(size: 48, weight: .black, design: .serif))
                .shadow(color: Color(red: 0.05, green: 0.05, blue: 0.05), radius: 1.5, x: 1, y: 1)
                .lineSpacing(12)
                .padding(.vertical, 50.0)
                .padding(.horizontal, 40.0)
                .minimumScaleFactor(0.5)
            Text("- \(item.author)")
                .padding(.bottom, 10)
            Spacer()
        }
        .background(
            Circle()
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [.gray, Color(red: 0.1, green: 0.1, blue: 0.1)]),
                        center: .center,
                        startRadius: 1,
                        endRadius: 150
                    )
                )
                .opacity(0.5)
        )
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView(item: Quote(text: "This is a test", author: "Test Author"))
            .preferredColorScheme(.dark)
    }
}

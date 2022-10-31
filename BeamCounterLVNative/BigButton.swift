//
//  BigButton.swift
//  BeamCounterLVNative
//
//  Created by Parker Rueve on 10/31/22.
//

import SwiftUI
import PhoenixLiveViewNative

struct BigButton: View {
    let text: String
    let context: LiveContext<Registry>
    init(element: Element, context: LiveContext<Registry>) {
        self.context = context
        if let text = element.attrIfPresent("text") {
            self.text = text
        } else {
            self.text = ""
        }
    }
    var body: some View {
        Button(action: {}) {
            Text(text)
                .bold()
        }
        .frame(maxWidth: .infinity)
        .padding(12)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(12)
    }
}

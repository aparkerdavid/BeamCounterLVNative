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
    let phxClick: String?
    let context: LiveContext<Registry>
    init(element: Element, context: LiveContext<Registry>) {
        self.context = context
        self.phxClick = element.attrIfPresent("phx-click")
        if let text = element.attrIfPresent("text") {
            self.text = text
        } else {
            self.text = ""
        }
    }
    var body: some View {
        Button(action: handleClick) {
            Text(text)
                .bold()
                .font(.system(size: 72))
        }
        .frame(width: 250, height: 250)
        .padding(12)
        .background(Color.blue)
        .foregroundColor(.white)
        .clipShape(Circle())
    }
    
                
    func handleClick() {
        if let event = self.phxClick {
            Task {
                try? await context.coordinator.pushEvent(type: "click", event: event, value: 0)
            }
        }
    }
}


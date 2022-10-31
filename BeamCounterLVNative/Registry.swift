//
//  Registry.swift
//  BeamCounterLVNative
//
//  Created by Parker Rueve on 10/31/22.
//

import SwiftUI
import PhoenixLiveViewNative

struct Registry: CustomRegistry {
    enum TagName: String {
        case bigButton = "big-button"
    }
    typealias AttributeName = EmptyRegistry.None
    
    static func lookup(_ name: TagName, element: Element, context: LiveContext<Registry>) -> some View {
        switch name {
        case .bigButton:
            BigButton(element: element, context: context)
        }
    }
}

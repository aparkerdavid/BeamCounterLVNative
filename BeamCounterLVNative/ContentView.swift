//
//  ContentView.swift
//  BeamCounterLVNative
//
//  Created by Parker Rueve on 10/31/22.
//

import SwiftUI
import PhoenixLiveViewNative

struct ContentView: View {
    @State var coordinator: LiveViewCoordinator<Registry> = {
        var config = LiveViewConfiguration()
        config.navigationMode = .enabled
        return LiveViewCoordinator(URL(string: "http://beam-counter.fly.dev/native")!, config: config)
    }()

    var body: some View {
        LiveView(coordinator: coordinator)
    }
}

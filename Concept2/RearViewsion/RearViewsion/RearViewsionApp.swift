//
//  RearViewsionApp.swift
//  RearViewsion
//
//  Created by David J kordsmeier on 3/30/24.
//

import SwiftUI

@main
struct RearViewsionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}

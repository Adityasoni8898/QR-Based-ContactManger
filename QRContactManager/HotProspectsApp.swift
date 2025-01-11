//
//  HotProspectsApp.swift
//  HotProspects
//
//  Created by Aditya Soni on 8/01/25.
//

import SwiftData
import SwiftUI

@main
struct HotProspectsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Prospect.self)
    }
}

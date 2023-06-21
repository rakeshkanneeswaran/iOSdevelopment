//
//  testApp.swift
//  test
//
//  Created by Apple on 21/06/23.
//

import SwiftUI

@main
struct testApp: App {
    @StateObject private var appData = applicationData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appData)
        }
    }
}

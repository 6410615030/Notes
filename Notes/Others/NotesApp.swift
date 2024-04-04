//
//  NotesApp.swift
//  Notes
//
//  Created by Babypowder on 3/4/2567 BE.
//

import SwiftUI
import FirebaseCore

@main
struct NotesApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

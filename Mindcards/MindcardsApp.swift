//
//  MindcardsApp.swift
//  Mindcards
//
//  Created by Pujita Tandiono on 26/07/22.
//

import SwiftUI

@main
struct MindcardsApp: App {
    @StateObject var notesViewModel = NotesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(notesViewModel)
        }
    }
}

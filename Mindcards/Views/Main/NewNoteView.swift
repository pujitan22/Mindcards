//
//  NewNoteView.swift
//  Mindcards
//
//  Created by Pujita Tandiono on 26/07/22.
//

import SwiftUI

struct NewNoteView: View {
    @State private var showAddNote = false
    
    var body: some View {
        NavigationView {
            Button("Add Note") {
                showAddNote = true
            }
            .navigationTitle("New Note")
        }
        .navigationViewStyle(.stack)
    }
}

struct NewNoteView_Previews: PreviewProvider {
    static var previews: some View {
        NewNoteView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

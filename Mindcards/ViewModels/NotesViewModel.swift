//
//  NotesViewModel.swift
//  Mindcards
//
//  Created by Pujita Tandiono on 27/07/22.
//

import Foundation

class NotesViewModel: ObservableObject {
    @Published private(set) var notes: [Note] = []
    
    init() {
        notes = Note.all
    }
    
    func addNote(note: Note) {
        notes.append(note)
    }
}

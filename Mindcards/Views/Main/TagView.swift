//
//  TagView.swift
//  Mindcards
//
//  Created by Pujita Tandiono on 27/07/22.
//

import SwiftUI

struct TagView: View {
    @EnvironmentObject var notesVM: NotesViewModel
    var body: some View {
        NavigationView {
            List {
                ForEach(Tag.allCases) { tag in
                    NavigationLink {
                        ScrollView {
                            NoteList(notes: notesVM.notes.filter{ $0.tag == tag.rawValue})
                        }
                        .navigationTitle(tag.rawValue)
                    } label: {
                        Text(tag.rawValue)
                    }
                    
                }
            }
            .navigationTitle("Tags")
        }
        .navigationViewStyle(.stack)
    }
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView()
            .environmentObject(NotesViewModel())
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

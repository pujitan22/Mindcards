//
//  AddNoteView.swift
//  Mindcards
//
//  Created by Pujita Tandiono on 27/07/22.
//

import SwiftUI

struct AddNoteView: View {
    @EnvironmentObject var notesVM: NotesViewModel
    
    @State private var title: String = ""
    @State private var selectedTag: Tag = Tag.ui
    @State private var description: String = ""
    @State private var navigateToNote = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Title")) {
                    TextField("Insert Title", text: $title)
                }
                
                Section(header: Text("Tag")) {
                    Picker("Tag", selection: $selectedTag) {
                        ForEach(Tag.allCases) { tag in
                            Text(tag.rawValue)
                                .tag(tag)
                        }
                    }
                    .pickerStyle(.menu)
                }
                
                Section(header: Text("Notes")) {
                    TextEditor(text: $description)
                }
                
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                       dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }

                }
                
                ToolbarItem {
                    NavigationLink(isActive: $navigateToNote) {
                        NoteView(note: notesVM.notes.sorted{ $0.dateCreated > $1.dateCreated}[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            saveNote()
                            navigateToNote = true
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                        
                    }
                    .disabled(title.isEmpty)
                }
            })
            .navigationTitle("Add Resources/Ideas")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddNoteView_Previews: PreviewProvider {
    static var previews: some View {
        AddNoteView()
            .environmentObject(NotesViewModel())
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

extension AddNoteView {
    private func saveNote() {
        let now = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        let dateCreated = dateFormatter.string(from: now)
        print(dateCreated)
        
        let note = Note(name: title, image: "", description: description, tag: selectedTag.rawValue, dateCreated: dateCreated)
        
        notesVM.addNote(note: note)
    }
}

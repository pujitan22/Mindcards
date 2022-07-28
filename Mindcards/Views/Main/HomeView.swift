//
//  HomeView.swift
//  Mindcards
//
//  Created by Pujita Tandiono on 26/07/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var notesVM: NotesViewModel
    @State var showAddNote = false
    var body: some View {
        
            
            ScrollView{
                NoteList(notes: notesVM.notes)
            }
            .navigationTitle("All Documents")
            .background(Color(red: 0.92941, green: 0.93725, blue: 0.99608))
            
        
        .sheet(isPresented: $showAddNote) {
            AddNoteView()
        }
        .navigationBarItems(trailing: Button(action: {
            showAddNote = true
        }, label: {
            Image(systemName: "plus.square.fill")
        }))
        
        .navigationViewStyle(.stack)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(NotesViewModel())
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

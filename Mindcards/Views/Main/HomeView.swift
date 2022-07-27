//
//  HomeView.swift
//  Mindcards
//
//  Created by Pujita Tandiono on 26/07/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var notesVM: NotesViewModel
    var body: some View {
        NavigationView {
            
                
                ScrollView{
                    NoteList(notes: notesVM.notes)
                }
                
                .navigationTitle("Resources")
            
            
            
            
        }
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

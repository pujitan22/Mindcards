//
//  NoteList.swift
//  Mindcards
//
//  Created by Pujita Tandiono on 27/07/22.
//

import SwiftUI

struct NoteList: View {
    var notes: [Note]
    var body: some View {
        VStack{
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 300), spacing: 10)], spacing: 50) {
                ForEach(notes) { note in
                    NavigationLink(destination: NoteView(note: note)){
                        NoteCard(note: note)
                    }
                    
                }
                
            }
            .padding(.top)
        }
        .padding(.horizontal, 60.0)
        
    }
}

struct NoteList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            NoteList(notes: Note.all)
        }
        
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

//
//  NoteCard.swift
//  Mindcards
//
//  Created by Pujita Tandiono on 27/07/22.
//

import SwiftUI

struct NoteCard: View {
    var note: Note
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: note.image)) { image in image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(alignment: .bottom) {
                        Text(note.name)
                            .font(.headline)
                            .foregroundColor(.gray)
                            .frame(maxWidth: 130)
                            .padding()
                    }
                
        } placeholder: {
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.gray.opacity(0.5))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay(alignment: .bottom) {
                    Text(note.name)
                        .font(.custom(FontsManager.Givonic.black, size: 48))
                        .foregroundColor(Color(red: 0.5, green: 0.5, blue: 0.5))
                        .shadow(color: .black.opacity(0), radius: 5, x: 0, y: 0)
                        .frame(maxWidth: 280)
                        .padding()
                }
            
        }
        }
        .frame(width: 300, height: 400, alignment: .top)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: .black.opacity(0.15), radius: 15, x: 0, y: 10)
        }
    
    }


struct NoteCard_Previews: PreviewProvider {
    static var previews: some View {
        NoteCard(note: Note.all[0])
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

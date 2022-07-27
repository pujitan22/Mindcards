//
//  NoteView.swift
//  Mindcards
//
//  Created by Pujita Tandiono on 27/07/22.
//

import SwiftUI

struct NoteView: View {
    var note: Note
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: note.image)) { image in image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    
                
        } placeholder: {
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.gray.opacity(0.5))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
            
        }
        .frame(height: 200)
        .background(Color(red: 0.9, green: 0.9, blue: 0.9))
            
            VStack(alignment: .leading, spacing: 20) {
                
                VStack(alignment: .leading, spacing: 5) {
                Text(note.name)
                    .font(.custom(FontsManager.Givonic.black, size: 48))
                    .foregroundColor(Color(red: 0.14118, green: 0.18431, blue: 0.60784))
                    .multilineTextAlignment(.leading)
                
                HStack(spacing: 20.0) {
                    HStack(alignment: .center) {
                        Image(systemName: "calendar")
                            .foregroundColor(Color(red: 0.14118, green: 0.18431, blue: 0.60784))
                        Text(note.dateCreated)
                            .font(.custom(FontsManager.Givonic.regular, size: 18))
                            .foregroundColor(Color(red: 0.14118, green: 0.18431, blue: 0.60784))
                    }
                    HStack {
                        Circle()
                            .frame(width: 10, height: 10, alignment: .center)
                            .foregroundColor(Color(red: 0.14118, green: 0.18431, blue: 0.60784))
                        Text(note.tag)
                            .font(.custom(FontsManager.Givonic.regular, size: 18))
                            .foregroundColor(Color(red: 0.14118, green: 0.18431, blue: 0.60784))
                    }
                }
                }
                
                
                    Text(note.description)
                        .font(.custom(FontsManager.Givonic.regular, size: 18))
                        .frame(maxWidth: 700, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView(note: Note.all[0])
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

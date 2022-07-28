//
//  ContentView.swift
//  Mindcards
//
//  Created by Pujita Tandiono on 26/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            

            HStack {
                
                List {
                    ZStack {
                        
                        Rectangle()
                            .frame(height: 35)
                            .foregroundColor(Color(red: 0.85882, green: 0.87451, blue: 0.99216))
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        
                        HStack (spacing: 5){
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color(red: 0.14118, green: 0.18431, blue: 0.60784))
                                .padding(.bottom, 0.0)
                                .opacity(0.5)
                            
                            Text("Search")
                                .font(.custom(FontsManager.Givonic.regular, size: 20))
                                .foregroundColor(Color(red: 0.14118, green: 0.18431, blue: 0.60784))
                                .padding(.top, 4.0)
                                .opacity(0.5)
                            .multilineTextAlignment(.leading)
                        }
                        .padding(.trailing, 160.0)
                            
                            
                    }
                    
                    NavigationLink(destination: HomeView()) {
                            Label("All Documents", systemImage: "doc.fill")
                    }
                    
                    
                    NavigationLink(destination: TagView()) {
                            Label("Tags", systemImage: "circle.fill")
                    }
                    
                    HStack (spacing: 100) {
                        Text("Resources")
                            .font(.custom(FontsManager.Givonic.bold, size: 28))
                        .foregroundColor(Color(red: 0.14118, green: 0.18431, blue: 0.60784))
                        
                        Image(systemName: "plus.square.fill")
                            .foregroundColor(Color(red: 0.14118, green: 0.18431, blue: 0.60784))
                            .padding(.leading)
                    }
                    
                    NavigationLink(destination: TagView()) {
                            Label("UX Resources", systemImage: "folder")
                    }
                    
                    NavigationLink(destination: TagView()) {
                            Label("Design Resources", systemImage: "folder")
                    }
                }
                
                
                
                
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(NotesViewModel())
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

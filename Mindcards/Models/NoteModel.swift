//
//  NoteModel.swift
//  Mindcards
//
//  Created by Pujita Tandiono on 27/07/22.
//

import Foundation

enum Tag: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case ui = "UI"
    case ux = "UX"
    case design = "Design"
    case animation = "Animation"
    case professional = "Professional"
    case gamedesign = "Game Design"
    case tech = "Tech"
}

struct Note: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let tag: Tag.RawValue
    let dateCreated: String
    
}

extension Note {
    static let all: [Note] = [
    Note(
        name: "Reference Link 01",
        image: "https://unsplash.com/photos/BKyvWG7D6QA",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas dignissim erat neque, ac tincidunt tellus iaculis non. Nunc ex massa, feugiat in erat eget, tincidunt fermentum sapien. Aenean at pulvinar justo. Proin interdum vulputate arcu, in finibus dolor commodo non. In eget auctor lectus.",
        tag: "UX",
        dateCreated: "2022-07-25"),
    
    Note(
        name: "Reference Link 02",
        image: "https://unsplash.com/photos/BKyvWG7D6QA",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas dignissim erat neque, ac tincidunt tellus iaculis non. Nunc ex massa, feugiat in erat eget, tincidunt fermentum sapien. Aenean at pulvinar justo. Proin interdum vulputate arcu, in finibus dolor commodo non. In eget auctor lectus.",
        tag: "UX",
        dateCreated: "2022-07-26"),
    
    Note(
        name: "Reference Link 03",
        image: "https://unsplash.com/photos/BKyvWG7D6QA",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas dignissim erat neque, ac tincidunt tellus iaculis non. Nunc ex massa, feugiat in erat eget, tincidunt fermentum sapien. Aenean at pulvinar justo. Proin interdum vulputate arcu, in finibus dolor commodo non. In eget auctor lectus.",
        tag: "UX",
        dateCreated: "2022-07-27")
    
    ]
}

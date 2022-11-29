//
//  ModelForMessages.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import Foundation

struct ModelForMessagesPage {
    static let data: [MessagesPageData] = [
        
        MessagesPageData(nameText: "Ariana Gray",
                         messsageText: "How are you ?",
                         timeText: "4:42",
                         notificationText: 2),
        
        MessagesPageData(nameText: "Kristin Watso",
                         messsageText: "Video",
                         timeText: "2:28",
                         notificationText: 2),
        
        MessagesPageData(nameText: "Cameron Willamson",
                         messsageText: "Image",
                         timeText: "Yesterday",
                         notificationText: 2),
        
        MessagesPageData(nameText: "Jacob Jones",
                         messsageText: "Send it quickly ⏩",
                         timeText: "7/11/2022",
                         notificationText: 2),
        
        MessagesPageData(nameText: "Esther Howard",
                         messsageText: "Video",
                         timeText: "",
                         notificationText: 2),
        
        MessagesPageData(nameText: "Flayd Miles",
                         messsageText: "Video",
                         timeText: "",
                         notificationText: 2),
        
        MessagesPageData(nameText: "Wade Warren",
                         messsageText: "Why not ? 🙄",
                         timeText: "",
                         notificationText: 2),
    ]
}


struct MessagesPageData{
    let id: UUID = UUID()
    static let profileImage: String = "ProfileImage"
    let nameText: String
    let messsageText: String
    let timeText: String
    let notificationText: Int
}

//
//  ModelForMessages.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import Foundation

struct ModelForMessagesPage {
    static let data: [MessagesPageData] = [
        
        MessagesPageData(isSeen: .No, nameText: "Ariana Gray",
                         messsageText: "How are you ?",
                         timeText: "4:42",
                         notificationCount: 2),
        
        MessagesPageData(isSeen: .No, nameText: "Kristin Watso",
                         messsageText: "Video",
                         timeText: "2:28",
                         notificationCount: 1),
        
        MessagesPageData(isSeen: .No, nameText: "Cameron Willamson",
                         messsageText: "Image",
                         timeText: "Yesterday",
                         notificationCount: 2),
        
        MessagesPageData(isSeen: .Yes, nameText: "Jacob Jones",
                         messsageText: "Send it quickly ⏩",
                         timeText: "7/11/2022",
                         notificationCount:  0),
        
        MessagesPageData(isSeen: .Yes, nameText: "Esther Howard",
                         messsageText: "Video",
                         timeText: "",
                         notificationCount: 0),
        
        MessagesPageData(isSeen: .Yes, nameText: "Flayd Miles",
                         messsageText: "Video",
                         timeText: "",
                         notificationCount: 0),
        
        MessagesPageData(isSeen: .Yes, nameText: "Wade Warren",
                         messsageText: "Why not ? 🙄",
                         timeText: "",
                         notificationCount: 0),
    ]
}


struct MessagesPageData{
    let id: UUID = UUID()
    let isSeen: MessageType.IsSeen
    let profileImage: String = "ProfileImage"
    let nameText: String
    let messsageText: String
    var timeText: String
    var notificationCount: Int
    var notificationText: String {
        get {
            return String(notificationCount)
        }
        set(newValue) {
            if isSeen == .Yes {
               notificationCount = 0
                timeText = ""
            }
        }
    }
}

enum MessageType {
    case Message
    case Video
    case Image
    enum IsSeen {
        case Yes
        case No
    }
   
}

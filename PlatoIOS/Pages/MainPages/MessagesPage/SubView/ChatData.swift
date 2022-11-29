//
//  ChatData.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 29/11/22.
//

import Foundation

struct ChatData {
    static let data: [ChatModel] = [
        ChatModel(senderDetail: .Sender, message: "Hi", time: "12:45 Pm"),
        ChatModel(senderDetail: .Receiver, message: "Hey", time: "12:54 Pm"),
        ChatModel(senderDetail: .Receiver, message: "Sup", time: "12:54 Pm"),
        ChatModel(senderDetail: .Sender, message: "Nothing", time: "12:46 Pm"),
        ChatModel(senderDetail: .Sender, message: "I mailed you images to color correct. Are they done ?", time: "12:46 Pm"),
        ChatModel(senderDetail: .Receiver, message: "No ! one of them was crypted, so can you share it again ?", time: "12:46 Pm"),
       
    ]
}

struct ChatModel {
    var id: UUID = UUID()
    var senderDetail: ChatDetail
    var message: String
    var time: String
}


enum ChatDetail {
    case Sender
    case Receiver
}

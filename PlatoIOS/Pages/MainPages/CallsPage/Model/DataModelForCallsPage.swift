//
//  DataModelForCallsPage.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 29/11/22.
//

import Foundation

struct DataForCallsPage {
    static let data: [ModelForCallsPage] = [
        ModelForCallsPage(profileImage: "ProfileImage",
                          nameText: "Savannah Nguyen",
                          callIcon: "IncomingCall",
                          timeText: "Today, 4:45 Pm",
                          mainCallIcon: "VideoCallIcon"),
        ModelForCallsPage(profileImage: "ProfileImage",
                          nameText: "Annette Black",
                          callIcon: "OutgoingCall",
                          timeText: "Today, 3:53 Pm",
                          mainCallIcon: "VideoCallIcon"),
        ModelForCallsPage(profileImage: "ProfileImage",
                          nameText: "Brooklyn Simmons",
                          callIcon: "OutgoingCall",
                          timeText: "Today, 3:42 Pm",
                          mainCallIcon: "CallIcon"),
        ModelForCallsPage(profileImage: "ProfileImage",
                          nameText: "Robert Fox",
                          callIcon: "IncomingCall",
                          timeText: "Today, 2:51 Pm",
                          mainCallIcon: "CallIcon"),
        ModelForCallsPage(profileImage: "ProfileImage",
                          nameText: "Wade Warren",
                          callIcon: "IncomingCall",
                          timeText: "Today, 2:01 Pm",
                          mainCallIcon: "CallIcon"),
        ModelForCallsPage(profileImage: "ProfileImage",
                          nameText: "Jane Cooper",
                          callIcon: "IncomingCall",
                          timeText: "Today, 1:38 Pm",
                          mainCallIcon: "CallIcon"),
    ]
}

struct ModelForCallsPage: Identifiable {
    var id = UUID()
    var profileImage: String
    var nameText: String
    var callIcon: String
    var timeText: String
    var mainCallIcon: String
}

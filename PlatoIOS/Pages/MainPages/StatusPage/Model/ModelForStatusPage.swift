//
//  ModelForStatusPage.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 29/11/22.
//

import Foundation

struct DataForStatusPage {
    static let data: [ModelForStatusPage] = [
        ModelForStatusPage(profileImage: "ProfileImage", nameText: "Arlene McCoy", timeText: "Today, 2:50 Pm "),
        ModelForStatusPage(profileImage: "ProfileImage", nameText: "Savannah Nguyen", timeText: "Today, 1:22 Pm "),
        ModelForStatusPage(profileImage: "ProfileImage", nameText: "Darlene Robertson", timeText: "Today, 4:17 Pm "),
        ModelForStatusPage(profileImage: "ProfileImage", nameText: "Wade Warren", timeText: "Today, 4:17 Am")
    ]
    static let dataTwo: [ModelForStatusPage] = [
        ModelForStatusPage(profileImage: "ProfileImage", nameText: "Arlene McCoy", timeText: "Today, 2:50 Pm "),
        ModelForStatusPage(profileImage: "ProfileImage", nameText: "Savannah Nguyen", timeText: "Today, 1:22 Pm "),
        ModelForStatusPage(profileImage: "ProfileImage", nameText: "Darlene Robertson", timeText: "Today, 4:17 Pm "),
        ModelForStatusPage(profileImage: "ProfileImage", nameText: "Wade Warren", timeText: "Today, 4:17 Am"),
        ModelForStatusPage(profileImage: "ProfileImage", nameText: "Arlene McCoy", timeText: "Today, 2:50 Pm "),
        ModelForStatusPage(profileImage: "ProfileImage", nameText: "Savannah Nguyen", timeText: "Today, 1:22 Pm "),
        ModelForStatusPage(profileImage: "ProfileImage", nameText: "Darlene Robertson", timeText: "Today, 4:17 Pm "),
        ModelForStatusPage(profileImage: "ProfileImage", nameText: "Wade Warren", timeText: "Today, 4:17 Am")
    ]
}

struct ModelForStatusPage {
    let id: UUID = UUID()
    let profileImage: String
    let nameText: String
    let timeText: String
}
struct ModelForStatusPageTwo {
    let id: UUID = UUID()
    let profileImage: String
    let nameText: String
    let timeText: String
}

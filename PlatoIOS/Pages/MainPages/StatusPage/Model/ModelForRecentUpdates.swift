//
//  ModelForStatusPage.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 29/11/22.
//

import Foundation

struct DataForStatusPage {
    static let dataForRecentUpdates: [ModelForRecentUpdates] = [
        ModelForRecentUpdates(profileImage: "ProfileImage", nameText: "Arlene McCoy", timeText: "Today, 2:50 Pm "),
        ModelForRecentUpdates(profileImage: "ProfileImage", nameText: "Savannah Nguyen", timeText: "Today, 1:22 Pm "),
        ModelForRecentUpdates(profileImage: "ProfileImage", nameText: "Darlene Robertson", timeText: "Today, 4:17 Pm "),
        ModelForRecentUpdates(profileImage: "ProfileImage", nameText: "Wade Warren", timeText: "Today, 4:17 Am")
    ]
    static let dataForViewedUpdates: [ModelForViewedUpdates] = [
        ModelForViewedUpdates(profileImage: "ProfileImage", nameText: "Arlene McCoy", timeText: "Today, 2:50 Pm "),
        ModelForViewedUpdates(profileImage: "ProfileImage", nameText: "Savannah Nguyen", timeText: "Today, 1:22 Pm "),
        ModelForViewedUpdates(profileImage: "ProfileImage", nameText: "Darlene Robertson", timeText: "Today, 4:17 Pm "),
        ModelForViewedUpdates(profileImage: "ProfileImage", nameText: "Wade Warren", timeText: "Today, 4:17 Am"),
        ModelForViewedUpdates(profileImage: "ProfileImage", nameText: "Arlene McCoy", timeText: "Today, 2:50 Pm "),
        ModelForViewedUpdates(profileImage: "ProfileImage", nameText: "Savannah Nguyen", timeText: "Today, 1:22 Pm "),
        ModelForViewedUpdates(profileImage: "ProfileImage", nameText: "Darlene Robertson", timeText: "Today, 4:17 Pm "),
        ModelForViewedUpdates(profileImage: "ProfileImage", nameText: "Wade Warren", timeText: "Today, 4:17 Am")
    ]
}


struct ModelForRecentUpdates {
    let id: UUID = UUID()
    let profileImage: String
    let nameText: String
    let timeText: String
}
struct ModelForViewedUpdates {
    let id: UUID = UUID()
    let profileImage: String
    let nameText: String
    let timeText: String
}

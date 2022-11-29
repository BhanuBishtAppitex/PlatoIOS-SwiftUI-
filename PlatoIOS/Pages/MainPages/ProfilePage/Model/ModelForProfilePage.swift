//
//  ModelForProfilePage.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import Foundation

struct ModelForProfilePage {
    static let data: [SettingsPageData] = [
        SettingsPageData(iconImage: "ProfilePageIcon-1", mainTitle: "Discover"),
        SettingsPageData(iconImage: "ProfilePageIcon-2", mainTitle: "Games"),
        SettingsPageData(iconImage: "ProfilePageIcon-3", mainTitle: "Contact List"),
        SettingsPageData(iconImage: "ProfilePageIcon-4", mainTitle: "Camera"),
        SettingsPageData(iconImage: "ProfilePageIcon-5", mainTitle: "Starred Messages"),
        SettingsPageData(iconImage: "ProfilePageIcon-6", mainTitle: "Invite Friends"),
        SettingsPageData(iconImage: "ProfilePageIcon-7", mainTitle: "Setting"),
 
    ]
}


struct profilePageData{
    let id: UUID = UUID()
    let iconImage: String
    let mainTitle: String
}

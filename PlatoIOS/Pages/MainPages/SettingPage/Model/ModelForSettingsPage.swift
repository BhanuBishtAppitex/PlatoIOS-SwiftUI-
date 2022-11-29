//
//  ModelForSettingsPage.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import Foundation

struct ModelForSettingsPage {
    static let data: [SettingsPageData] = [
        SettingsPageData(iconImage: "SettingsPageIcon-1", mainTitle: "Chat Settings"),
        SettingsPageData(iconImage: "SettingsPageIcon-2", mainTitle: "Notifications"),
        SettingsPageData(iconImage: "SettingsPageIcon-3", mainTitle: "Blocked Contacts"),
        SettingsPageData(iconImage: "SettingsPageIcon-4", mainTitle: "My Account"),
        SettingsPageData(iconImage: "SettingsPageIcon-5", mainTitle: "Privacy"),
        SettingsPageData(iconImage: "SettingsPageIcon-6", mainTitle: "Appearance"),
        SettingsPageData(iconImage: "SettingsPageIcon-7", mainTitle: "Patment Settings"),
        SettingsPageData(iconImage: "SettingsPageIcon-8", mainTitle: "SMS"),
        SettingsPageData(iconImage: "SettingsPageIcon-9", mainTitle: "Help"),
     
    ]
}


struct SettingsPageData{
    let id: UUID = UUID()
    let iconImage: String
    let mainTitle: String
}

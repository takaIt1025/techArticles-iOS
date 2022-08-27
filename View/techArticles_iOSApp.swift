//
//  techArticles_iOSApp.swift
//  Shared
//
//  Created by Takaya Ito on 2022/08/27.
//

import SwiftUI

@main
struct techArticles_iOSApp: App {
    var body: some Scene {
        let scrum = DailyScrum.sampleData[0]
        WindowGroup {
            CardView(scrum: scrum)
        }
    }
}
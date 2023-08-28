//
//  StatusManager.swift
//  ChatAppUI
//
//  Created by Eymen on 28.08.2023.
//

import Foundation

struct Status: Identifiable {
    let id = UUID()
    let userName: String
    let timeAgo: String
    let statusImage: String
    var isViewed: Bool = false
}


class StatusManager: ObservableObject {
    @Published var statusList: [Status] = [
        Status(userName: "Adem", timeAgo: "1h ago", statusImage: "status1", isViewed: true),
        Status(userName: "Mohammad", timeAgo: "2h ago", statusImage: "status2", isViewed: false),
        Status(userName: "Michael", timeAgo: "3h ago", statusImage: "status3", isViewed: true),
        Status(userName: "David", timeAgo: "5h ago", statusImage: "status4", isViewed: true)
    ]
}

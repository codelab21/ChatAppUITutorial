//
//  CallsManager.swift
//  ChatAppUI
//
//  Created by Eymen on 30.08.2023.
//

import Foundation

struct Call: Identifiable {
    let id = UUID()
    let contactName: String
    let userProfileImageName: String
    let isMissed: Bool
    let isOutgoing: Bool
    let callTime: Date
}


class CallManager: ObservableObject {
    @Published var calls: [Call] = [
        Call(contactName: "Adam", userProfileImageName: "CallUser1", isMissed: true, isOutgoing: false, callTime: Date()),
        Call(contactName: "Noah", userProfileImageName: "CallUser2", isMissed: false, isOutgoing: true, callTime: Date().addingTimeInterval(-3600)),
        Call(contactName: "Abraham", userProfileImageName: "CallUser3", isMissed: true, isOutgoing: false, callTime: Date().addingTimeInterval(-7200)),
        Call(contactName: "Moses", userProfileImageName: "CallUser4", isMissed: false, isOutgoing: true, callTime: Date().addingTimeInterval(-10800)),
        Call(contactName: "David", userProfileImageName: "CallUser1", isMissed: true, isOutgoing: false, callTime: Date().addingTimeInterval(-14400)),
        Call(contactName: "Solomon", userProfileImageName: "CallUser2", isMissed: false, isOutgoing: true, callTime: Date().addingTimeInterval(-18000)),
        Call(contactName: "Isaiah", userProfileImageName: "CallUser3", isMissed: true, isOutgoing: false, callTime: Date().addingTimeInterval(-21600)),
        Call(contactName: "Daniel", userProfileImageName: "CallUser4", isMissed: false, isOutgoing: true, callTime: Date().addingTimeInterval(-25200)),
        Call(contactName: "Muhammad", userProfileImageName: "CallUser1", isMissed: true, isOutgoing: false, callTime: Date().addingTimeInterval(-28800)),
        Call(contactName: "Ibrahim", userProfileImageName: "CallUser2", isMissed: false, isOutgoing: true, callTime: Date().addingTimeInterval(-32400)),
        Call(contactName: "Yusuf", userProfileImageName: "CallUser3", isMissed: true, isOutgoing: false, callTime: Date().addingTimeInterval(-36000)),
        Call(contactName: "Ayyub", userProfileImageName: "CallUser4", isMissed: false, isOutgoing: true, callTime: Date().addingTimeInterval(-39600)),
        Call(contactName: "Zakariya", userProfileImageName: "CallUser1", isMissed: true, isOutgoing: false, callTime: Date().addingTimeInterval(-43200)),
        Call(contactName: "Yahya", userProfileImageName: "CallUser2", isMissed: false, isOutgoing: true, callTime: Date().addingTimeInterval(-46800)),
        Call(contactName: "Isma'il", userProfileImageName: "CallUser3", isMissed: true, isOutgoing: false, callTime: Date().addingTimeInterval(-50400))
    ]
}

extension Call {
    var callTimeFormatted: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        
        return formatter.string(from: callTime)
    }
}

//
//  BottomBar.swift
//  ChatAppUI
//
//  Created by Eymen on 28.08.2023.
//

import SwiftUI

struct BottomBar: View {
    var body: some View {
        TabView {
            Text("Status")
                .tabItem {
                    Text("Status")
                    Image(systemName: "circle.dashed.inset.filled")
                }
            Text("Calls")
                .tabItem {
                    Text("Calls")
                    Image(systemName: "phone")
                }
            Text("Communities")
                .tabItem {
                    Text("Communities")
                    Image(systemName: "person.3")
                }
            Text("Chats")
                .tabItem {
                    Text("Chats")
                    Image(systemName: "message.fill")
                }
            Text("Settings")
                .tabItem {
                    Text("Settings")
                    Image(systemName: "gear")
                }
        }
    }
}

struct BottomBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomBar()
    }
}

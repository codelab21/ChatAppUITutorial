//
//  CallListView.swift
//  ChatAppUI
//
//  Created by Eymen on 30.08.2023.
//

import SwiftUI

struct CallListView: View {
    @StateObject private var callManager = CallManager()
    @State private var showMissedOnly = false
    var filteredCalls: [Call] {
        if showMissedOnly {
            return callManager.calls.filter { $0.isMissed }
        } else {
            return callManager.calls
        }
    }
    
    var body: some View {
        Section(header: Text("Recent")) {
            List(filteredCalls) { call in
                CallCardView(call: call)
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Picker("Show Missed Only", selection: $showMissedOnly.animation()) {
                    Text("All").tag(false)
                    Text("Missed").tag(true)
                }
                .frame(width: 200)
                .pickerStyle(SegmentedPickerStyle())
                .padding()
            }
        }
        .environmentObject(callManager)
    }
}

struct CallListView_Previews: PreviewProvider {
    static var previews: some View {
        CallListView()
    }
}

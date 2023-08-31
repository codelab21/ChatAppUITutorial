//
//  CallsView.swift
//  ChatAppUI
//
//  Created by Eymen on 30.08.2023.
//

import SwiftUI

struct CallsView: View {
    var body: some View {
        NavigationView {
            Form {
                CallLinkCard()
                CallListView()
            }
            .navigationTitle("Calls")
            .navigationBarItems(leading: Text("Edit").foregroundColor(.blue), trailing: Image(systemName: "phone.badge.plus").foregroundColor(.blue))
        }
    }
}

struct CallsView_Previews: PreviewProvider {
    static var previews: some View {
        CallsView()
    }
}

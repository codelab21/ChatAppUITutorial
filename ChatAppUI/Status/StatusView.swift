//
//  StatusView.swift
//  ChatAppUI
//
//  Created by Eymen on 28.08.2023.
//

import SwiftUI

struct StatusView: View {
    var body: some View {
        NavigationView {
            Form {
                MyStatusCardView()
                StatusListView()
                InfoTextView()
            }
            .navigationTitle("Status")
            .navigationBarItems(leading: Text("Privacy").foregroundColor(.blue))
        }
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
            .preferredColorScheme(.dark)
    }
}

//
//  InfoTextView.swift
//  ChatAppUI
//
//  Created by Eymen on 28.08.2023.
//

import SwiftUI

struct InfoTextView: View {
    var body: some View {
        HStack(spacing: 5) {
            Image(systemName: "lock.fill")
            Text("Your status updates are")
            Text("end-to-end encrypted")
                .foregroundColor(.blue)
        }
        .foregroundColor(.gray)
        .font(.caption)
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

struct InfoTextView_Previews: PreviewProvider {
    static var previews: some View {
        InfoTextView()
    }
}

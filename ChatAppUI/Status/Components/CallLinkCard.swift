//
//  CallLinkCard.swift
//  ChatAppUI
//
//  Created by Eymen on 30.08.2023.
//

import SwiftUI

struct CallLinkCard: View {
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: "link")
                .font(.body)
                .padding(10)
                .background(.ultraThinMaterial)
                .clipShape(Circle())
                .foregroundColor(.blue)
            VStack(alignment: .leading) {
                Text("New Call Link").bold().font(.title3)
                Text("Share a link for your WhatsApp call")
                    .font(.caption).foregroundColor(.gray)
            }
        }
    }
}

struct CallLinkCard_Previews: PreviewProvider {
    static var previews: some View {
        CallLinkCard()
    }
}

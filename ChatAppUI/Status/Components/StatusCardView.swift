//
//  StatusCardView.swift
//  ChatAppUI
//
//  Created by Eymen on 28.08.2023.
//

import SwiftUI

struct StatusCardView: View {
    let status: Status
    var body: some View {
        HStack {
            ZStack {
                Image(systemName: "circle")
                    .resizable()
                    .frame(width: 62, height: 62)
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(status.isViewed ? .blue : .gray.opacity(0.3))
                    .fontWeight(.medium)
                
                Image(status.statusImage)
                    .resizable()
                    .frame(width: 55, height: 55 )
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.black.opacity(0.2)
                                        , lineWidth: 1)
                    )
                    .offset(x: -0.4, y: -0.1)
            }
            VStack(alignment: .leading, spacing: 5) {
                Text(status.userName).font(.headline)
                Text(status.timeAgo)
                    .font(.subheadline)
                    .foregroundColor(.gray).bold()
            }
        }
    }
}

struct StatusCardView_Previews: PreviewProvider {
    static var previews: some View {
        StatusCardView(status: StatusManager().statusList[0])
    }
}

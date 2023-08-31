//
//  CallCardView.swift
//  ChatAppUI
//
//  Created by Eymen on 30.08.2023.
//

import SwiftUI

struct CallCardView: View {
    let call: Call
    var body: some View {
        HStack {
            Image(call.userProfileImageName)
                .resizable()
                .scaledToFill().frame(width: 40)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 5) {
                if call.isMissed {
                    Text(call.contactName)
                        .font(.headline)
                        .foregroundColor(.red)
                } else {
                    Text(call.contactName)
                        .font(.headline)
                }
                
                HStack {
                    Image(systemName: "phone.fill")
                        .font(.subheadline)
                    Text(call.isMissed ? "Missed" : "Outgoing")
                        .font(.subheadline)
                }
                .foregroundColor(.gray)
            }
            Spacer()
            Text(call.callTimeFormatted)
                .foregroundColor(.gray)
                .font(.subheadline)
            Image(systemName: "info.circle")
                .foregroundColor(.blue)
        }
    }
}

struct CallCardView_Previews: PreviewProvider {
    static var previews: some View {
        CallCardView(call: CallManager().calls[3])
    }
}

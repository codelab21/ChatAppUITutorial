//
//  MyStatusCardView.swift
//  ChatAppUI
//
//  Created by Eymen on 28.08.2023.
//

import SwiftUI

struct MyStatusCardView: View {
    var body: some View {
        Section {
            HStack {
                ZStack(alignment: .bottomTrailing) {
                    Image("auth_profile")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60)
                        .clipShape(Circle())
                    Image(systemName: "plus")
                        .bold()
                        .padding(2.5)
                        .foregroundColor(.white)
                        .background(.blue)
                        .clipShape(Circle())
                }
                VStack(alignment: .leading) {
                    Text("My Status").font(.headline)
                    Text("Add to my status")
                        .font(.subheadline).foregroundColor(.gray)
                }
                Spacer()
                Button {
                    print("Status Card Camera")
                } label: {
                    Image(systemName: "camera.fill")
                        .font(.body)
                        .padding(10)
                        .background(.ultraThinMaterial)
                        .clipShape(Circle())
                    
                }
                
                Button {
                    print("")
                } label: {
                    Image(systemName: "pencil")
                        .font(.body)
                        .padding(10)
                        .background(.ultraThinMaterial)
                        .clipShape(Circle())
                }

            }
        }
    }
}

struct MyStatusCardView_Previews: PreviewProvider {
    static var previews: some View {
        MyStatusCardView()
    }
}

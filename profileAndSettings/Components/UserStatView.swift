//
//  UserStatView.swift
//  profileAndSettings
//
//  Created by Rachel Yoon on 8/1/23.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    var body: some View {
        HStack {
            Text("\(value)")
                .font(.headline)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
            
            Text(title)
                .font(.headline)
                .multilineTextAlignment(.leading)
            Spacer()
        }
        .padding(.horizontal, 50.0)
    }
}

struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView(value: 12, title: "Followers")
    }
}

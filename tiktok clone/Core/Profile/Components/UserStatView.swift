//
//  UserStatsView.swift
//  tiktok clone
//
//  Created by Ervin Young on 2/17/24.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let figure: String
    let title: String
    
    var body: some View {
        VStack {
            Text("\(value)\(figure)")
                .fontWeight(.bold)
                .font(.subheadline)
            

            
            Text("\(title)")
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}


#Preview {
    UserStatView(value: 5, figure: "M", title: "followers")
}

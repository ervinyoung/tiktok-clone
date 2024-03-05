//
//  UserCell.swift
//  tiktok clone
//
//  Created by Ervin Young on 2/15/24.
//

import SwiftUI

struct UserCell: View {
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray3))
            
            VStack(alignment: .leading) {
                Text("@realJohnnyAppleseed")
                    .bold()
                    .font(.subheadline)
                
                Text("John Appleseed")
                    .font(.footnote)
            }
            
            Spacer()
        }
    }
}

#Preview {
    UserCell()
}

//
//  NotificationCell.swift
//  tiktok clone
//
//  Created by Ervin Young on 2/15/24.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack {
            //circular profile image
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 36, height: 36)
                .foregroundStyle(Color(.systemGray5))
            //use + sign to concatinate multiple texts
            HStack {
                Text("officialJoebiden ")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                
                Text("sniffed one of your posts sdfsdfsdfsdfsdfsdfsdfsdfsdf ")
                    .font(.footnote) +
                
                Text("Just now")
                    .font(.caption)
                    .foregroundStyle(.gray)
                
            }
            Spacer()
            
            Rectangle()
                .frame(width: 48, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 6))
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}

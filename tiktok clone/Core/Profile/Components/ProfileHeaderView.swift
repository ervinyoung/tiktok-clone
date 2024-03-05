//
//  ProfileHeaderView.swift
//  tiktok clone
//
//  Created by Ervin Young on 2/17/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                //profile image
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                //username
                Text("@realdonaldtrump")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            //stats view
            
            HStack(spacing: 16) {
                UserStatView(value: 47, figure: "M", title: "Followers")
                UserStatView(value: 256, figure: "", title: "Following")
                UserStatView(value: 918, figure: "M", title: "Likes")
            }
            
            //edit  profile button
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            
            Divider()
          
      
        }
    }
}

#Preview {
    ProfileHeaderView()
}


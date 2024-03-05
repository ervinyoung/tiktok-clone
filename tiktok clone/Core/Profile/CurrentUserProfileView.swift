//
//  SwiftUIView.swift
//  tiktok clone
//
//  Created by Ervin Young on 2/17/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 2) {
                    
                    //profile header
                    ProfileHeaderView()
                    
                    
                    //post grid view
                    PostGridView()
                }
                .padding(.top)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}

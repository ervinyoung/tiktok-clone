//
//  NotificationsView.swift
//  tiktok clone
//
//  Created by Ervin Young on 2/15/24.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 24) {
                    ForEach(0 ..< 10) { notification in
                        NotificationCell()
                    }
                }
            }
            .navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
          //  .padding(.vertical)
        }
    }
}

#Preview {
    NotificationsView()
}

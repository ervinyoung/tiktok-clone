//
//  FeedView.swift
//  tiktok clone
//
//  Created by Ervin Young on 2/14/24.
//

import SwiftUI
import AVKit

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(viewModel.posts) { post in
                    FeedCell(post: post, player: player)    //everytime we refernece the feedcell, we pass in the post and the player.
                        .id(post.id)
                    
                }
            }
            .scrollTargetLayout()
        }
        .onAppear{
            player.play()
        }
        .scrollPosition(id: $scrollPosition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .onChange(of: scrollPosition) { oldValue, newValue in
            playVideoOnChangeOfScrollPosition(postId: newValue)
        }
    }
    
    func playVideoOnChangeOfScrollPosition(postId: String?) {
        //find the post that matches this particular postid from my viewmodel
        guard let currentPost = viewModel.posts.first(where: { $0.id == postId }) else {
            return
        }
        
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL(string: currentPost.videoUrl)!)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    FeedView()
}

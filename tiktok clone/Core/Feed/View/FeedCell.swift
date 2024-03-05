//
//  FeedCell.swift
//  tiktok clone
//
//  Created by Ervin Young on 2/14/24.
//

import SwiftUI
import AVKit

struct FeedCell: View {
    let post: Post
    var player: AVPlayer
    @State private var isLoved = false
    @State private var isSaved = false
    
    init(post: Post, player: AVPlayer){
        self.post = post
        self.player = player
    }
    
    var body: some View {
        ZStack{
            CustomVideoPlayer(player: player)
                .containerRelativeFrame([.horizontal, .vertical])
               
            VStack {
                Spacer()
                
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading){
                        Text("testTextSwag")
                            .fontWeight(.semibold)
                        Text("Fight to be kings #ad #clashofclans #xyzcba #fyp")
                    }
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    
                    Spacer()
                    
                    //making the like and comment and bookmark buttons now below
                    VStack(spacing: 28) {
                        
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.gray)
                        
                        
                        Button {
                            //toggle the state when the button is clicked
                            self.isLoved.toggle()
                            
                        } label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 32, height: 28)
                                    .foregroundStyle(self.isLoved ? .red : .white)
                                
                                Text("200.9k")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                            
                            
                            
                        }
                        
                        Button {
                            
                        } label: {
                            
                            VStack {
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                                
                                Text("32.1k")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }

                            
                        }
                        
                        Button {
                            self.isSaved.toggle()

                        } label: {
                            Image(systemName: "bookmark.fill")
                                .resizable()
                                .frame(width: 22, height: 28)
                                .foregroundStyle(self.isSaved ? .green : .white)

                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundStyle(.white)
                            
                        }
                    }
                }
               .padding(.bottom, 85)
                

                
                
            }
            .padding()
        }
        .onAppear {
            print("Debug: post id \(post.id)")
          //  player.play()
        }
    }
}

#Preview {
    FeedCell(post: Post(id: NSUUID().uuidString, videoUrl: "" ), player: AVPlayer())
}

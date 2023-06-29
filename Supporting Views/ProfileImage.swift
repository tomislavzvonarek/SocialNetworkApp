//
//  ProfilePicture.swift
//  SocialNetworkApp
//
//  Created by Tomislav Zvonarek on 26.06.2023..
//

import SwiftUI

struct ProfileImage: View {
    let url: URL?
    
    var body: some View {
        GeometryReader { proxy in
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                Color.clear
            }
            .frame(width: proxy.size.width, height: proxy.size.height)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray.opacity(0.25)))
        }
    }
}

struct ProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImage(url: URL(string: "https://source.unsplash.com/lw9LrnpUmWw/480x480"))
    }
}

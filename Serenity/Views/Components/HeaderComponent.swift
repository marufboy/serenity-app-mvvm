//
//  HeaderComponent.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 16/08/23.
//

import SwiftUI

struct HeaderComponent: View {
    var geometry: GeometryProxy
    
    var body: some View {
        VStack(alignment: .center){
            HStack(alignment: .top){
                Image(systemName: "person.fill.viewfinder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geometry.size.width * 0.25)
                    .foregroundColor(.white)
                    .opacity(0.8)
                    .padding(30)
                //Side Header
                VStack(alignment: .leading){
                    (
                        Text("Hi, Buddies") + Text(Image(systemName: "face.smiling.inverse"))
                    )
                    .font(.system(size: geometry.size.width * 0.08, design: .rounded))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    
                    Text(getRandomSentence(ofType: .interactive))
                        .font(.system(size: geometry.size.width * 0.05, design: .rounded))
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                    
                    Text("You can answer that later")
                        .font(.system(size: geometry.size.height * 0.03, design: .rounded))
                        .fontWeight(.ultraLight)
                        .foregroundColor(.white)
                        .padding(.top, 20)
                }
                .frame(width: geometry.size.width / 1.8)
                .padding(.all, 10)
                //Header
            }
            .frame(width: geometry.size.width)
            .padding(20)
        }.frame(width: geometry.size.width, height: geometry.size.height)
    }
}

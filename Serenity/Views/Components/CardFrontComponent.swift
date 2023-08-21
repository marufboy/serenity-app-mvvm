//
//  CardFrontComponent.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 18/08/23.
//

import SwiftUI

struct CardFrontComponent: View {
    let width : CGFloat
    let height : CGFloat
    var quote: String
    @Binding var degree : Double
    
    var body: some View {
        ZStack {
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .frame(width: width, height: height)
                    .shadow(color: .gray, radius: 2, x: 0, y: 0)
                
                Image(systemName: "cloud.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: (height * 2)/5)
                    .offset(x: width / 2.5, y: height / 3)
                    .opacity(0.2)
                    .blendMode(.destinationOut)
                
                Image(systemName: "cloud.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: (height * 1)/5)
                    .offset(x: width / 2.5, y: height / 3)
                    .opacity(0.2)
                    .blendMode(.destinationOut)
            }.compositingGroup()
            
            
            VStack {
                Spacer()
                Text("\"\(quote)\"")
                    .font(.system(size: width * 0.06, design: .rounded))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(12)
                    .foregroundColor(Color("PrimaryColor"))
                    .padding(20)
                    .cornerRadius(20)
                Spacer()
            }
            .frame(width: width / 1.2, height: height, alignment: .center)
            .padding(50)
            
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}

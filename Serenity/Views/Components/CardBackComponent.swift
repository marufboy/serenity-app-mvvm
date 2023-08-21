//
//  CardBackComponent.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 18/08/23.
//

import SwiftUI

struct CardBackComponent: View {
    let width : CGFloat
    let height : CGFloat
    var typePath: SentenceType
    @Binding var degree : Double
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black.opacity(0.7), lineWidth: 3)
                .frame(width: width, height: height)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.black.opacity(0.2))
                .frame(width: width, height: height)
                .shadow(color: .gray, radius: 2, x: 0, y: 0)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.black.opacity(0.7))
                .padding()
                .frame(width: width, height: height)
            
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black.opacity(0.7), lineWidth: 3)
                .padding()
                .frame(width: width, height: height)
            
            //TODO: create a new component to gather the 3 image
            Image(systemName: typePath == .affirmation ? "seal.fill" : "snowflake")
                .resizable()
                .frame(width: width / 8, height: height / 8)
                .foregroundColor(.blue.opacity(0.7))
            
            Image(systemName: typePath == .affirmation ? "seal" : "snowflake")
                .resizable()
                .frame(width: width / 7, height: height / 7)
                .foregroundColor(.white)
            
            Image(systemName: typePath == .affirmation ? "seal" : "snowflake.circle.fill")
                .resizable()
                .frame(width: width / 4, height: height / 4)
                .foregroundColor(.blue.opacity(0.7))
            
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}

//
//  HomeView.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 16/08/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var globalState: GlobalstateViewModel
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.indigo, Color.purple]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .center){
                    Spacer()
                    HeaderComponent(geometry: geometry)
                    
                    ButtonPrimaryComponent(geometry: geometry) {
                        globalState.changeView(to: globalState.checkTutorialViewVisited())
                    }
                    Spacer()
                }.frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
                .previewDevice(PreviewDevice(rawValue: "iPad mini (6th generation)"))
                .previewDisplayName("iPad mini (6th gen) (portrait)")
            
            HomeView()
                .previewDevice(PreviewDevice(rawValue: "iPad Pro (9.7-inch)"))
                .previewDisplayName("iPad Pro 9.7 (portrait)")
            
            HomeView()
                .previewDevice(PreviewDevice(rawValue: "iPad Air (5th generation)"))
                .previewDisplayName("iPad Air 5 (portrait)")
            
            HomeView()
                .previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch) (4rd generation)"))
                .previewDisplayName("iPad Pro 11 (4rd gen) (portrait)")
            
            HomeView()
                .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch) (6th generation)"))
                .previewDisplayName("iPad Pro 12.9 (6th gen) (portrait)")
        }
    }
}

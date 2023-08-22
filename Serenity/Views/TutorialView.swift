//
//  TutorialView.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 16/08/23.
//

import SwiftUI

struct TutorialView: View {
    @EnvironmentObject var globalState: GlobalstateViewModel
    @StateObject var tutorialVm = TutorialViewModel()
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.indigo, Color.purple]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                //VStack
                VStack(alignment: .center){
                    Text("Introduction App")
                        .font(.system(size: geometry.size.width * 0.05, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    ChatScrollView(tutorialVM: tutorialVm)
                    
                    ButtonPrimaryComponent(geometry: geometry) {
                        globalState.changeView(to: 3)
                    }
                    .hideWhen(!tutorialVm.isLastMessage, remove: true)
                }.frame(width: geometry.size.width, height: geometry.size.height)
            }
            .onAppear{
                globalState.changeVisitedTutorialView()
            }
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TutorialView()
                .previewDevice(PreviewDevice(rawValue: "iPad mini (6th generation)"))
                .previewDisplayName("iPad mini (6th gen) (portrait)")
            
            TutorialView()
                .previewDevice(PreviewDevice(rawValue: "iPad Pro (9.7-inch)"))
                .previewDisplayName("iPad Pro 9.7 (portrait)")
            
            TutorialView()
                .previewDevice(PreviewDevice(rawValue: "iPad Air (5th generation)"))
                .previewDisplayName("iPad Air 5 (portrait)")
            
            TutorialView()
                .previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch) (4rd generation)"))
                .previewDisplayName("iPad Pro 11 (4rd gen) (portrait)")
            
            TutorialView()
                .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch) (6th generation)"))
                .previewDisplayName("iPad Pro 12.9 (6th gen) (portrait)")
        }
    }
}

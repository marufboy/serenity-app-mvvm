//
//  AffirmationCardView.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 19/08/23.
//

import SwiftUI

struct AffirmationCardView: View {
    @EnvironmentObject var globalState: GlobalstateViewModel
    @StateObject var affirmationCardVM: AffirmationCardViewModel = AffirmationCardViewModel()
    
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                Text("Tap the Magic Card")
                    .font(.system(size: geometry.size.width * 0.05, design: .rounded))
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                Spacer()
                ZStack{
                    CardFrontComponent(width: geometry.size.width * 0.8, height: geometry.size.height * 0.7, quote: affirmationCardVM.quote, degree: $affirmationCardVM.frontDegree)
                    CardBackComponent(width: geometry.size.width * 0.8, height: geometry.size.height * 0.7, typePath: globalState.selectStory, degree: $affirmationCardVM.backDegree)
                }
                .rotation3DEffect(Angle(degrees: affirmationCardVM.isShaking ? 5 : 0), axis: (x: 0, y: 1, z: 0))
                .onTapGesture {
                    affirmationCardVM.openCard()
                }
                .onAppear{
                    affirmationCardVM.selectQuote(by: globalState.selectStory)
                }
                Spacer()
                Spacer()
                ButtonPrimaryComponent(geometry: geometry, action: {
                    globalState.changeView(to: 1)
                })
                .hideWhen(!affirmationCardVM.isFinished, remove: true)
                .animation(.easeInOut, value: affirmationCardVM.isFinished)
                Spacer()
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(Color.indigo)
        }
    }
}

//struct AffirmationCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            AffirmationCardView()
//                .previewDevice(PreviewDevice(rawValue: "iPad mini (6th generation)"))
//                .previewDisplayName("iPad mini (6th gen) (portrait)")
//
//            AffirmationCardView()
//                .previewDevice(PreviewDevice(rawValue: "iPad Pro (9.7-inch)"))
//                .previewDisplayName("iPad Pro 9.7 (portrait)")
//
//            AffirmationCardView()
//                .previewDevice(PreviewDevice(rawValue: "iPad Air (5th generation)"))
//                .previewDisplayName("iPad Air 5 (portrait)")
//
//            AffirmationCardView()
//                .previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch) (4rd generation)"))
//                .previewDisplayName("iPad Pro 11 (4rd gen) (portrait)")
//
//            AffirmationCardView()
//                .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch) (6th generation)"))
//                .previewDisplayName("iPad Pro 12.9 (6th gen) (portrait)")
//        }
//    }
//}

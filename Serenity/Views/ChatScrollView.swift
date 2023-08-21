//
//  ChatScrollView.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 16/08/23.
//

import SwiftUI

struct ChatScrollView: View {
    @ObservedObject var tutorialVM: TutorialViewModel
    
    var body: some View {
        GeometryReader{ geometry in
            ScrollViewReader{ scrollReader in
                ScrollView(showsIndicators: false) {
                    LazyVStack (alignment: .center){
                        ForEach(tutorialVM.items.indices, id: \.self) { index in
                            // content
                            ChatBubbleComp(direction: index % 2 == 0 ? .left : .right) {
                                Text("\(tutorialVM.items[index])")
                                    .padding(.all, 20)
                                    .foregroundColor(index % 2 == 0 ? Color.white : Color.black)
                                    .font(.system(size: geometry.size.width * 0.025, design: .rounded))
                                    .background(index % 2 == 0 ? Color.blue : Color.white)
                                // ... it is appeared, so we can use transition
                            }.id(index)
                                .transition(index == tutorialVM.items.indices.last ? .opacity : .identity)
                                .onAppear {
                                    // on last appeared schedule add next ...
                                    tutorialVM.nextMessageAppear(index: index, scrollReader: scrollReader)
                                }
                        }
                    }
                    .frame(width: geometry.size.width / 1.5, alignment: .center)
                    // animates transitions
                    .animation(.easeIn(duration: 0.7), value: tutorialVM.items.count)
                }
                //problem
                .onAppear{
                    tutorialVM.firstMessage()
                }
            }.frame(width: geometry.size.width)
        }
    }
}

//struct ChatScrollView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChatScrollView()
//    }
//}

//
//  SwitchStoryView.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 18/08/23.
//

import SwiftUI

struct SwitchStoryView: View {
    @EnvironmentObject var globalState: GlobalstateViewModel
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.indigo, Color.purple]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    //Header Text
                    Text("Choose your path")
                        .font(.system(size: geometry.size.width * 0.05, design: .rounded))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                    
                    ButtonStoryComponent(title: "Magic Self Talk", subtitle: "Calmness is within your reach. Let me show you through a moment of reflection.", imageName: "wand.and.stars", widthImage: geometry.size.width * 0.8, heightImage: geometry.size.height / 2.5)
                        .onTapGesture {
                            globalState.selectedStory(with: .affirmation)
                            globalState.changeView(to: 5)
                        }
                    
                    ButtonStoryComponent(title: "Zero To Hero Reflection",subtitle: "Let's meditate on a zero-to-hero story to inspire enthusiasm and cultivate calm in our thoughts.", imageName: "wand.and.stars", widthImage: geometry.size.width * 0.8, heightImage: geometry.size.height / 2.5)
                        .onTapGesture {
                            globalState.selectedStory(with: .story)
                            globalState.changeView(to: 5)
                        }
                }
            }
        }
    }
}

struct SwitchStoryView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchStoryView()
    }
}

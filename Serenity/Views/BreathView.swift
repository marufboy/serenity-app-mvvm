//
//  BreathView.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 18/08/23.
//

import SwiftUI

struct BreathView: View {
    @EnvironmentObject var globalState: GlobalstateViewModel
    @StateObject private var breathVM = BreathViewModel()
    
    var body: some View {
        GeometryReader{ geometry in
            LinearGradient(gradient: Gradient(colors: [Color.indigo, Color.purple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("4-7-8 Breathing Exercise")
                    .font(.system(size: geometry.size.width * 0.05, design: .rounded))
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                Spacer()
                
                BreathHeaderView(geometry: geometry)
                Text(breathVM.breathState.text)
                    .font(.system(size: geometry.size.width * 0.035, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.bottom, 60)
                    .foregroundColor(breathVM.breathState.color)
                Spacer()
                ZStack{
                    BreathProgressComponent(vm: breathVM)
                        .frame(width: geometry.size.width / 2, height: geometry.size.height / 2.5)
                    
                    ButtonTimerComponent(vm: breathVM,geometry: geometry, action: {
                        //initialization first breath
                        breathVM.startBreathTimer()
                    })
                }
                .frame(width: geometry.size.width, height: geometry.size.height / 5)
                Spacer()
                Spacer()
                Spacer()
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .overlay{
                GeometryReader{ geometry in
                    ZStack(alignment: .center) {
                        Color.black.opacity(0.5)
                            .ignoresSafeArea(.all)
                        RepeatBreathingSheet(repeatBreathing: breathVM.restartRepeatBreath, cancelRepeat: breathVM.stopRepeatBreath)
                            .frame(width: geometry.size.width * 0.5, height: geometry.size.height * 0.5 )
                        
                    }
                    .opacity(breathVM.isShowRepeatSheet ? 1 : 0)
                    VStack{
                        Spacer()
                        ButtonPrimaryComponent(geometry: geometry, action: {
                            globalState.changeView(to: 4)
                        })
                            .opacity(breathVM.isShowNextButton ? 1 : 0)
                            .animation(.easeInOut, value: breathVM.isShowNextButton)
                        
                    }.frame(width: geometry.size.width)
                }
            }
        }
    }
    
    @ViewBuilder
    func BreathHeaderView(geometry: GeometryProxy) -> some View {
        ZStack {
            BreathHeaderComponent(geometry: geometry)
            BreathPracticeInfoComponent(geometry: geometry)
        }
        .frame(width: geometry.size.width, height: 300)
        .padding(.bottom, 60)
    }
    
//    @ViewBuilder
//    func BreathOverlayView(with vm: BreathViewModel) -> some View{
//        GeometryReader{ geometry in
//            ZStack(alignment: .center) {
//                Color.black.opacity(0.5)
//                    .ignoresSafeArea(.all)
//                RepeatBreathingSheet(repeatBreathing: vm.restartRepeatBreath, cancelRepeat: vm.stopRepeatBreath)
//                    .frame(width: geometry.size.width * 0.5, height: geometry.size.height * 0.5 )
//
//            }
//            .opacity(vm.isShowRepeatSheet ? 1 : 0)
//            VStack{
//                ButtonPrimaryComponent(geometry: geometry)
//                    .opacity(vm.isShowNextButton ? 1 : 0)
//                    .animation(.easeInOut, value: vm.isShowNextButton)
//
//            }.frame(width: geometry.size.width)
//        }
//    }
}

struct BreathView_Previews: PreviewProvider {
    static var previews: some View {
        BreathView()
    }
}

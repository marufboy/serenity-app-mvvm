//
//  ChatBubbleComponent.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 16/08/23.
//

import SwiftUI

struct ChatBubbleComp<Content>: View where Content: View {
    let direction: ChatBubbleShape.Direction
    let content: () -> Content
    init(direction: ChatBubbleShape.Direction, @ViewBuilder content: @escaping () -> Content) {
        self.content = content
        self.direction = direction
    }
    
    var body: some View {
        HStack {
            if direction == .right {
                Spacer()
            }
            content().clipShape(ChatBubbleShape(direction: direction))
            if direction == .left {
                Spacer()
            }
        }.padding([(direction == .left) ? .leading : .trailing, .top, .bottom], 20)
            .padding((direction == .right) ? .leading : .trailing, 50)
    }
}

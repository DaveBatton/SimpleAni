// Copyright ©2023 Dave Batton & Associates

import SwiftUI

struct AnimatedCardView<Content>: View where Content: View {
    var strokeStyle: StrokeStyle = StrokeStyle(lineWidth: 0)
    let animation: Namespace.ID
    @ViewBuilder var content: Content

    var body: some View {
        ZStack {
            content
                .overlay {
                    RoundedRectangle(cornerRadius: 24)
                        .strokeBorder(style: strokeStyle)
                        .matchedGeometryEffect(id: "card-stroke", in: animation)
                }
        }
        .background(Color(UIColor.systemGray6))
        .mask {
            RoundedRectangle(cornerRadius: 24)
                .matchedGeometryEffect(id: "card-mask", in: animation)
        }
        .shadow(radius: 17, y: 7)
    }
}

#Preview("AnimatedCardView") {
    @Namespace var animation

    return ScrollView {
        VStack(spacing: 20) {

            AnimatedCardView(animation: animation) {
                VStack {
                    Text("Card 1")
                        .font(.title.bold())
                    Text("A bit of text.")
                }
                .padding()
            }

            AnimatedCardView(animation: animation) {
                VStack {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Card 2")
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .foregroundStyle(.white)
                }
                .padding()
                .background(.orange)
            }

            AnimatedCardView(strokeStyle: StrokeStyle(lineWidth: 2), animation: animation) {
                VStack {
                    Text("Card 3")
                        .font(.title.bold())
                        .foregroundStyle(.white)
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding()
                .background(.pink)
            }

        }
        .padding()
    }
}

// Copyright ©2023 Dave Batton & Associates

import SwiftUI

struct CardView<Content>: View where Content: View {
    var strokeStyle: StrokeStyle = StrokeStyle(lineWidth: 0)
    @ViewBuilder var content: Content

    var body: some View {
        ZStack {
            content
                .overlay {
                    RoundedRectangle(cornerRadius: 24)
                        .strokeBorder(style: strokeStyle)
                }
        }
        .background(Color(UIColor.systemGray6))
        .mask {
            RoundedRectangle(cornerRadius: 24)
        }
        .shadow(radius: 17, y: 7)
    }
}

#Preview("CardView") {
    return ScrollView {
        VStack(spacing: 20) {

            CardView() {
                VStack {
                    Text("Card 1")
                        .font(.title.bold())
                    Text("A bit of text.")
                }
                .padding()
            }

            CardView() {
                VStack {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Card 2")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
                .background(.orange)
            }

            CardView(strokeStyle: StrokeStyle(lineWidth: 2)) {
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

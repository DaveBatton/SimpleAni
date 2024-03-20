import SwiftUI

struct AnimatedView2: View {
    @Binding var showCoupon: Bool
    let animation: Namespace.ID

    var body: some View {
        CardView(strokeStyle: StrokeStyle(lineWidth: 4, dash: [20]), animation: animation) {
                VStack {
                    Text("$1 REWARD!")
                        .font(.largeTitle.bold())
                        .matchedGeometryEffect(id: "coupon-title", in: animation)

                    Divider()
                        .matchedGeometryEffect(id: "coupon-divider", in: animation)
                        .padding()

                    Text("Act now to save $1.00 on your next online order.")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .matchedGeometryEffect(id: "coupon-details", in: animation)
                        .padding(.bottom)

                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .fixedSize(horizontal: false, vertical: true)

                    Button("Done") {
                        withAnimation {
                            showCoupon = false
                        }
                    }
                    .padding()
                }
                .background {
                    Rectangle()
                        .fill(.ultraThinMaterial)
                        .ignoresSafeArea()
                }
                .matchedGeometryEffect(id: "coupon", in: animation)
                .padding()
                .navigationTitle("Rewards")
        }
        .matchedGeometryEffect(id: "coupon-card", in: animation)
    }
}

#Preview("Coupon Details", traits: .sizeThatFitsLayout) {
    @Namespace var animation
    return AnimatedView2(showCoupon: Binding.constant(true), animation: animation)
        .padding()
}

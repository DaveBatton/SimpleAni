import SwiftUI

struct AnimatedView2: View {
    @Binding var showCoupon: Bool
    let animation: Namespace.ID

    var body: some View {
        AnimatedCardView(strokeStyle: StrokeStyle(lineWidth: 4, dash: [20]), animation: animation) {
                VStack {
                    Text("$1 REWARD!")
                        .font(.largeTitle.bold())
                        .matchedGeometryEffect(id: "coupon-title", in: animation)

                    Divider()
                        .matchedGeometryEffect(id: "coupon-divider", in: animation)
                        .padding()

                    Text("Act now to save $1.00.")
                        .bold()
                        .fixedSize(horizontal: true, vertical: false)
                        .matchedGeometryEffect(id: "coupon-details", in: animation)
                        .padding(.bottom)

                    Text("Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .fixedSize(horizontal: false, vertical: true)

                    Button("Done") {
                        withAnimation {
                            showCoupon = false
                        }
                    }
                    .padding()
                }
                .matchedGeometryEffect(id: "coupon", in: animation)
                .padding()
                .navigationTitle("Rewards")
                .background(.teal.opacity(0.3))
                .matchedGeometryEffect(id: "coupon-background", in: animation)
        }
        .matchedGeometryEffect(id: "coupon-card", in: animation)
    }
}

#Preview("Coupon Details", traits: .sizeThatFitsLayout) {
    @Namespace var animation
    return AnimatedView2(showCoupon: Binding.constant(true), animation: animation)
        .padding()
}

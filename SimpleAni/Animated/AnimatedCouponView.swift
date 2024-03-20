import SwiftUI

struct AnimatedCouponView: View {
    let title: String
    let details: String
    let animation: Namespace.ID

    var body: some View {
        AnimatedCardView(strokeStyle: StrokeStyle(lineWidth: 4, dash: [20]), animation: animation) {
            VStack {
                Text(title)
                    .font(.largeTitle.bold())
                    .matchedGeometryEffect(id: "coupon-title", in: animation)
                Divider()
                    .background(.red)
                    .matchedGeometryEffect(id: "coupon-divider", in: animation)
                Text(details)
                    .matchedGeometryEffect(id: "coupon-details", in: animation)
            }
            .padding()
            .background(.teal.opacity(0.3))
        }
        .matchedGeometryEffect(id: "coupon-card", in: animation)
    }
}

#Preview {
    @Namespace var animation
    return AnimatedCouponView(
        title: "Save 10%!",
        details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", animation: animation
    )
    .padding()
}

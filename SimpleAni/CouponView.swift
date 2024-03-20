import SwiftUI

struct CouponView: View {
    let title: String
    let details: String
    let animation: Namespace.ID

    var body: some View {
        CardView(strokeStyle: StrokeStyle(lineWidth: 4, dash: [20])) {
            VStack {
                Text(title)
                    .font(.largeTitle.bold())
                Divider()
                    .overlay(.red)
                Text(details)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
            .background(.teal.opacity(0.4))
        }
    }
}

#Preview {
    @Namespace var animation
    return CouponView(title: "Save 10%!",
               details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", animation: animation)
    .padding()
}

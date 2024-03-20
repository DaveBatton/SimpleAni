import SwiftUI

struct AnimatedView1: View {
    @Namespace private var animation
    @State private var showCoupon = false

    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView(showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/) {
                    VStack {
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                            .frame(maxWidth: .infinity, alignment: .leading)

                        Spacer(minLength: 40)

                        AnimatedCouponView(
                            title: "$1 REWARD!",
                            details: "Act now to save $1.00 on your next online order.",
                            animation: animation
                        )
                        .onTapGesture {
                            withAnimation {
                                showCoupon.toggle()
                            }
                        }
                        .opacity(showCoupon ? 0.0 : 1.0)

                        Spacer(minLength: 50)

                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    }
                    .padding()
                }
                .navigationTitle("MGE Animation")

                if showCoupon {
                    VStack {
                        Spacer()
                        AnimatedView2(
                            showCoupon: $showCoupon,
                            animation: animation
                        )
                        Spacer()
                    }
                    .padding()
                }

            }
        }
        .navigationTitle("Simple Animation")
    }
}

#Preview {
    AnimatedView1()
}

import SwiftUI

struct View1: View {
    @Namespace private var animation

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        .frame(maxWidth: .infinity, alignment: .leading)

                    Spacer(minLength: 40)

                    NavigationLink {
                        View2()
                    } label: {
                        CouponView(
                            title: "$1 REWARD!",
                            details: "Act now to save $1.00.",
                            animation: animation
                        )
                    }
                    .buttonStyle(.plain)

                    Spacer(minLength: 50)

                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding()
            }
            .navigationTitle("Default Animation")
        }
    }
}

#Preview("Portrait") {
    View1()
}

import SwiftUI

struct View2: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("$1 REWARD!")
                    .font(.largeTitle.bold())

                Divider()

                Spacer(minLength: 30)

                Text("Act now to save $1.00 on your next online order.")
                    .font(.title.bold())
                    .frame(maxWidth: .infinity, alignment: .leading)

                Spacer(minLength: 30)

                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .frame(maxWidth: .infinity, alignment: .leading)

                Spacer(minLength: 30)

                Button("Get Started") {
                    print("Button tapped!")
                }
            }
            .padding()
            .navigationTitle("Rewards")
        }
    }
}

#Preview {
    View2()
}

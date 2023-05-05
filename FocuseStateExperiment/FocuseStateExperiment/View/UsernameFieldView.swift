import SwiftUI

struct UsernameFieldView: View {
    @FocusState private var isUsernameFocused: Bool
    @State private var username = ""

    var body: some View {
        VStack {
            TextField("Enter your username", text: $username)
                .focused($isUsernameFocused)

            Button("Toggle Focus") {
                isUsernameFocused.toggle()
            }
        }
    }
}

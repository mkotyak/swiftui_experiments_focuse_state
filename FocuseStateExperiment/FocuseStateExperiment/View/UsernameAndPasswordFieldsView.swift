import SwiftUI

struct UsernameAndPasswordFieldsView: View {
    private enum FocusedField {
        case username
        case password
    }

    @FocusState private var focusedField: FocusedField?

    @State private var username = ""
    @State private var password = ""

    var body: some View {
        VStack {
            TextField("Enter your username", text: $username)
                .focused($focusedField, equals: .username)

            SecureField("Enter your password", text: $password)
                .focused($focusedField, equals: .password)
        }
        .onSubmit {
            if focusedField == .username {
                focusedField = .password
            } else {
                focusedField = nil
            }
        }
    }
}

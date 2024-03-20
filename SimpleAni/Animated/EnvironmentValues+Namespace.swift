import SwiftUI

// As found on [Stack Overflow](https://stackoverflow.com/a/70499022/43990).

//    struct NamespaceEnvironmentKey: EnvironmentKey {
//        static var defaultValue: Namespace.ID = Namespace().wrappedValue
//    }
//
//    extension EnvironmentValues {
//        var namespace: Namespace.ID {
//            get { self[NamespaceEnvironmentKey.self] }
//            set { self[NamespaceEnvironmentKey.self] = newValue }
//        }
//    }
//
//    extension View {
//        func namespace(_ value: Namespace.ID) -> some View {
//            environment(\.namespace, value)
//        }
//    }

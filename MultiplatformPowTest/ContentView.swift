import SwiftUI
import Pow

struct ContentView: View {
    @State
    var isOn = false

    var body: some View {
        VStack(spacing: 8) {
            Toggle("Toggle Me", isOn: $isOn)

            let image = Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)

            ZStack {
                image.hidden()

                if isOn {
                    image
                        .transition(.movingParts.anvil)
                }
            }

            Text("Hello, world!")
                .changeEffect(.shake(rate: .fast), value: isOn)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

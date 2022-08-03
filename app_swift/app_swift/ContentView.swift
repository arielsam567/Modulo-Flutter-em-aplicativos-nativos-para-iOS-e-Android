
import SwiftUI
import Flutter
import UIKit


struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}
//
//
struct ContentViewS: View {
    var body: some View {
        Button(action: signIn) {
            Text("Abrir tela FLUTTER")
        }
    }
}


func signIn() {
    print("CLICK")
    let flutterEngine = FlutterEngine(name: "my flutter engine")
    flutterEngine.run();
    
    let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil);
    
    UIApplication.shared.keyWindow?.rootViewController?.present(flutterViewController, animated: true, completion: nil)

    //present(flutterViewController, animated: true, completion: nil)
    
}

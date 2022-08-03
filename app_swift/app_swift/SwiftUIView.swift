//import UIKit
//import Flutter
//
//class ViewController: UIViewController {
//  override func viewDidLoad() {
//    super.viewDidLoad()
//
//    // Make a button to call the showFlutter function when pressed.
//    let button = UIButton(type:UIButton.ButtonType.custom)
//    button.addTarget(self, action: #selector(showFlutter), for: .touchUpInside)
//    button.setTitle("Show Flutter!", for: UIControl.State.normal)
//    button.frame = CGRect(x: 80.0, y: 210.0, width: 160.0, height: 40.0)
//    button.backgroundColor = UIColor.blue
//    self.view.addSubview(button)
//  }
//
//  @objc func showFlutter() {
//    let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
//    let flutterViewController =
//        FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
//    present(flutterViewController, animated: true, completion: nil)
//  }
//}

import UIKit
import Flutter

class ViewController: UIViewController {
    var methodChannel : FlutterMethodChannel?
    override func viewDidLoad() {
        super.viewDidLoad()
        initMethodChannel()
        buildLayout()
    }
}

/** Creating Button and func showFlutter, call FlutterViewController*/
extension ViewController {
    func buildLayout() {
        let button = UIButton(type:UIButton.ButtonType.custom)
        button.addTarget(self, action: #selector(showFlutter), for: .touchUpInside)
        button.setTitle("Show Flutter!", for: UIControl.State.normal)
        button.frame = CGRect(x: 80.0, y: 210.0, width: 160.0, height: 40.0)
        button.backgroundColor = UIColor.blue
        self.view.addSubview(button)
    }
    
    @objc func showFlutter() {
        if let flutterEngine = (UIApplication.shared.delegate as? AppDelegate)?.flutterEngine {
            let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
            flutterViewController.modalPresentationStyle = .fullScreen
            self.present(flutterViewController, animated: true, completion: nil)
            
        }
    }
}

/** Platform Channel method example */
extension ViewController {
    func initMethodChannel() {
        if let flutterEngine = (UIApplication.shared.delegate as? AppDelegate)?.flutterEngine {
            methodChannel = FlutterMethodChannel(
                name: "com.example.androidnativeapp/navigate",
                binaryMessenger: flutterEngine.binaryMessenger
            )
            methodChannel?.setMethodCallHandler({ [weak self]
                (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
                if self != nil {
                    switch(call.method) {
                    case "pop":
                        self?.dismiss(animated: true, completion: nil)
                        break;
                    default:
                        print("Unrecognized method name: \(call.method)")
                    }
                }
            })
        }
    }
}
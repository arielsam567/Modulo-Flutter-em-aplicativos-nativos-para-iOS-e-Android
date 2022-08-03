//
//  CombineVC.swift
//  testando
//
//  Created by Ariel Sam Santos on 03/08/22.
//

import UIKit
import Flutter


class CombineVC: ViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad();
        let whiteView = UILabel();
        
        whiteView.backgroundColor = .orange;
        whiteView.frame = CGRect(
            x: 0,
            y: 0,
            width: 202,
            height: 200
        );
        
        whiteView.text = " TESTE";
        
        let button = UIButton(frame: CGRect(x: 100, y: 300, width: 100, height: 50))
        button.backgroundColor = .green
        button.setTitle("Test Button", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        self.view.addSubview(button)
        
        view.addSubview(whiteView);
    }
    
    @objc func buttonAction(sender: UIButton!) {
        print("Button tapped");
        if let flutterEngine = (UIApplication.shared.delegate as? AppDelegate)?.flutterEngine {
                    let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
                    flutterViewController.modalPresentationStyle = .fullScreen
                    self.present(flutterViewController, animated: true, completion: nil)
                    
                }
        
    }
    
}

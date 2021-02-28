//
//  ViewController.swift
//  DISCTest
//
//  Created by MyeongJin on 2021/02/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameFiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Method
    // MARK: Life Cycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.nameFiled.text = nil
    }

    // MARK: IBActions
    @IBAction func touchUpStartButton(_ sender: UIButton) {
        
        guard let name: String = self.nameFiled.text,
              name.isEmpty == false else {
            let alert: UIAlertController
            alert = UIAlertController(title: "알림", message: "이름을 입력해주세요", preferredStyle: .alert)
            
            let okAction: UIAlertAction
            okAction = UIAlertAction(title: "확인", style: .cancel, handler: nil)
            
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        UserInfo.shared.name = self.nameFiled.text
        
        self.performSegue(withIdentifier: "PresentTest", sender: nil)
    }
    
}


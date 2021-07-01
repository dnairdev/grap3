//
//  ViewController.swift
//  grape
//
//  Created by Diya Nair on 6/29/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var caption: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
  
    
    @IBAction func createC(_ sender: Any) {
        caption.text = textBox.text
    }
    
    @IBAction func createP(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
    }
    
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
        imageView.image = image
    }
    
    picker.dismiss(animated: true, completion: nil)
}

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
    picker.dismiss(animated: true, completion: nil)
}
}

//
//  DetailViewController.swift
//  100 Days First Project
//
//  Created by Zodino BLR on 4/30/21.
//  Copyright © 2021 Zodino BLR. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImage
        
 
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
            navigationController?.hidesBarsOnTap = false
        }
    }


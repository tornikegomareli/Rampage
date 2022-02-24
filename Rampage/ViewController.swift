//
//  ViewController.swift
//  Rampage
//
//  Created by Tornike Gomareli on 24.02.22.
//

import UIKit
import Engine

class ViewController: UIViewController {
    private let imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImageView()
     
        let displayLink = CADisplayLink(target: self, selector: #selector(update))
        displayLink.add(to: .main, forMode: .common)
    }
    
    @objc func update(_ displayLink: CADisplayLink) {
        var renderer = Renderer(width: 8, height: 8)
        renderer.draw()
        imageView.image = UIImage(bitmap: renderer.bitmap)
    }
    
    func setupImageView() {
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .black
        imageView.layer.magnificationFilter = .nearest
    }
    
    
}


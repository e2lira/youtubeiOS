//
//  ViewController.swift
//  youtube
//
//  Created by edgar elias gonzalez lira on 16/03/17.
//  Copyright © 2017 GESIF. All rights reserved.
//

import UIKit

// UICollectionViewController es la clase encargada de administrar deferentes UIViewControlller
class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Home"
        navigationController?.navigationBar.isTranslucent = false;
        
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
        titleLabel.text = "Home"
        titleLabel.textColor = UIColor.white
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        navigationItem.titleView = titleLabel // se necesita adicionar como un elemento
        
        
        collectionView?.backgroundColor = UIColor.white
        //view.backgroundColor = UIColor.red es cuando era UIViewController
        
        // para el primer caso cuando pintamos los rectangulos rojos
        //collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
        
        // La nueva clase de VideoCell
        collectionView?.register(VideoCell.self, forCellWithReuseIdentifier: "cellId")
        
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5 // los elementos que va obtener
    }


    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId",for: indexPath)
        
        // Pintamos uno cuadros Rojos
        // Primer elemento
        //cell.backgroundColor = UIColor.red
        
        // Como ya se tiene el objeto VideoCell
        
        
        return cell
    }
    
    /**
    * Para crear un conjunto de rows correspondientes a un ViewLayout
    */
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = view.frame.width - 32
        let coeficiente = Double(9) / Double(16)
        let cof = (Double(height) * coeficiente) + 16 + 68
        return CGSize(width: view.frame.width, height:  CGFloat(Float(cof)))
    }
    
    // Metodo para eliminar el espacio entre lineas
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}









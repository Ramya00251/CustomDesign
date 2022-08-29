//
//  ViewController.swift
//  CustomDesign
//
//  Created by Ramya Oduri on 28/08/22.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    private var myCollectionView:UICollectionView?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
            myCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
            layout.itemSize = CGSize(width: view.frame.size.width, height: view.frame.size.width/2)
            myCollectionView?.frame = CGRect(x: 10, y: 0, width: view.frame.size.width, height: 500)
            guard let myCollectionView = myCollectionView else {
                return
            }
            myCollectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)
            myCollectionView.dataSource = self
            myCollectionView.delegate = self
            view.addSubview(myCollectionView)
         
        }

    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     return 1
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath)
            return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 100.0, height: 500.0)
        }
    }



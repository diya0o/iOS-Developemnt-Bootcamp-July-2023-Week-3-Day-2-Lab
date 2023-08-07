//
//  ViewController.swift
//  week3Lab2
//
//  Created by Diya Alowdah on 07/08/2023.
//

import UIKit

class ViewController: UIViewController {
    
   

    let navigationBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: 100, height: 44))


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(navigationBar)
        view.backgroundColor = .white
        
        
        let titleLabel = UILabel()
        titleLabel.textColor = .black
        titleLabel.text = "Most Popular "
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.textAlignment = .center
        titleLabel.sizeToFit()
        titleLabel.frame = CGRect(x: -100, y: 150, width: view.frame.width, height: titleLabel.frame.height)
        
        
        view.addSubview(titleLabel)
        
        
        //         Create rectangles
        let rectWidth = (view.frame.width - 60) / 2
        let rectHeight: CGFloat = 60
        let rectSpacing: CGFloat = 20
        
        let labels = ["U.S Politics","Tech Compaies","TV& Movids","Reicpes","Travel","Celebs","Restaurants"]
        
        for i in 0..<labels.count {
            let xPosition = CGFloat(i % 2) * (rectWidth + rectSpacing) + 20
            let yPosition = CGFloat(i / 2) * (rectHeight + rectSpacing) + 200
            
            let rectangle = UIView(frame: CGRect(x: xPosition, y: yPosition, width: rectWidth, height: rectHeight))
            rectangle.backgroundColor = .gray.withAlphaComponent(0.3)
            rectangle.layer.cornerRadius = 10
            view.addSubview(rectangle)
            
            let label = UILabel(frame: CGRect(x: 10, y: 10, width: rectWidth - 20, height: 30))
            label.text = labels[i]
            label.textAlignment = .center
            rectangle.addSubview(label)
        }
        
        
        
        
        
        
        
        
        let titleLabel2 = UILabel()
        titleLabel2.textColor = .black
        titleLabel2.text = "Lifestyle "
        titleLabel2.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel2.textAlignment = .center
        titleLabel2.sizeToFit()
        titleLabel2.frame = CGRect(x: -120, y: 550, width: view.frame.width, height: titleLabel2.frame.height)
        
        
        view.addSubview(titleLabel2)
        
//         Create rectangles
        let rectWidth2 = (view.frame.width - 60) / 2
        let rectHeight2: CGFloat = 60
        let rectSpacing2: CGFloat = 20
        
        let labels2 = ["Travel Tips","Luxury Homes","Architecture","Interior Design","Fashion","Men's Style","Cars","Wine & Drinks"," Home Products","Kitchen Products"]
        
        for i in 0..<labels2.count {
            let xPosition2 = CGFloat(i % 2) * (rectWidth2 + rectSpacing2) + 20
            let yPosition2 = CGFloat(i / 2) * (rectHeight2 + rectSpacing2) + 600
            
            let rectangle2 = UIView(frame: CGRect(x: xPosition2, y: yPosition2, width: rectWidth2, height: rectHeight2))
            rectangle2.backgroundColor = .gray.withAlphaComponent(0.3)
            rectangle2.layer.cornerRadius = 10
            view.addSubview(rectangle2)
            
            let label2 = UILabel(frame: CGRect(x: 10, y: 10, width: rectWidth2 - 20, height: 30))
            label2.text = labels2[i]
            label2.textAlignment = .center
            rectangle2.addSubview(label2)
        }

    }
    
    override func viewWillLayoutSubviews() {
        
          let width = self.view.frame.width
          let navigationBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 60, width: width, height: 44))
          self.view.addSubview(navigationBar);
          let navigationItem = UINavigationItem(title: "Personalize your feed")
          navigationBar.setItems([navigationItem], animated: false)
       }
   
}
        

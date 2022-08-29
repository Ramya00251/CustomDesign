//
//  CollectionViewCell.swift
//  CustomDesign
//
//  Created by Ramya Oduri on 28/08/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var questionNumberArray = [24,24,24,24,04]
    
    
    static let identifier = "CollectionViewCell"
    private var myView1 : UIView = {
        let myView1 = UIView()
        myView1.backgroundColor = .green
        return myView1
    }()
    private var myView2 : UIView = {
        let myView2 = UIView()
        myView2.backgroundColor = .orange
        return myView2
    }()
    private var myView3 : UIView = {
        let myView3 = UIView()
        myView3.backgroundColor = .cyan
        return myView3
    }()
    private var myView4 : UIView = {
        let myView4 = UIView()
        myView4.backgroundColor = .systemYellow
        return myView4
    }()
    private var myView5 : UIView = {
        let myView5 = UIView()
        myView5.backgroundColor = .red
        return myView5
    }()
    
    let numberOfQuestionsLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize:16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let numberOfQuestionsLabel1: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize:16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let numberOfQuestionsLabel2: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize:16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let numberOfQuestionsLabel3: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize:16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let numberOfQuestionsLabel4: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize:16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(myView1)
        contentView.addSubview(myView2)
        contentView.addSubview(myView3)
        contentView.addSubview(myView4)
        contentView.addSubview(myView5)
        myView1.layer.cornerRadius = 15
        myView1.layer.maskedCorners = [.layerMinXMinYCorner , .layerMinXMaxYCorner]
        myView5.layer.cornerRadius = 10
        myView5.layer.maskedCorners = [.layerMaxXMaxYCorner , .layerMaxXMinYCorner]
        contentView.addSubview(numberOfQuestionsLabel)
        contentView.addSubview(numberOfQuestionsLabel1)
        contentView.addSubview(numberOfQuestionsLabel2)
        contentView.addSubview(numberOfQuestionsLabel3)
        contentView.addSubview(numberOfQuestionsLabel4)
       

    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        myView1.frame = CGRect(x: 30, y: 35, width: questionNumberArray[0] * 3, height: 70)
        myView2.frame = CGRect(x: questionNumberArray[0] * 3 + 30, y: 45, width: questionNumberArray[1] * 3, height: 50)
        myView3.frame = CGRect(x: questionNumberArray[0] * 3 + 30 + questionNumberArray[1] * 3, y: 45, width: questionNumberArray[2] * 3, height: 50)
        myView4.frame = CGRect(x:questionNumberArray[0] * 3 + 30 + questionNumberArray[1] * 3 + questionNumberArray[2] * 3 , y: 45, width: questionNumberArray[3] * 3, height: 50)
        myView5.frame = CGRect(x: questionNumberArray[0] * 3 + 30 + questionNumberArray[1] * 3 + questionNumberArray[2] * 3 + questionNumberArray[3] * 3, y: 45, width: questionNumberArray[4] * 3, height: 50)
        
        numberOfQuestionsLabel.frame = CGRect(x: 40, y: 120, width: 200, height: 20)
        numberOfQuestionsLabel.text = "\(questionNumberArray[0]) Correct Answers"
        numberOfQuestionsLabel1.frame = CGRect(x: 40, y: 150, width: 200, height: 20)
        numberOfQuestionsLabel1.text = "\(questionNumberArray[1]) Skipped Visited"
        numberOfQuestionsLabel2.frame = CGRect(x: 40, y: 180, width: 200, height: 20)
        numberOfQuestionsLabel2.text = "\(questionNumberArray[2]) Skipped Not Visited"
        numberOfQuestionsLabel3.frame = CGRect(x: 40, y: 210, width: 200, height: 20)
        numberOfQuestionsLabel3.text = "\(questionNumberArray[3]) Partially Correct"
        numberOfQuestionsLabel4.frame = CGRect(x: 40, y: 240, width: 200, height: 20)
        numberOfQuestionsLabel4.text = "\(questionNumberArray[4])  Incorrect Answers"
        
        
        drawCircle()
        drawCircle1()
        drawCircle2()
        drawCircle3()
        drawCircle4()
        
    }
    func drawCircle(){
        let trackLayer = CAShapeLayer()
        trackLayer.frame  = CGRect(x: 10, y: 70, width: 17, height: 17)
        let circularPath1 = UIBezierPath(roundedRect: CGRect(x: 10, y:50, width: 17, height: 17), cornerRadius: 40)
        trackLayer.path = circularPath1.cgPath
        trackLayer.lineWidth = 10
        trackLayer.fillColor = UIColor.green.cgColor
        trackLayer.lineCap = CAShapeLayerLineCap.round
        contentView.layer.addSublayer(trackLayer)
    }
    func drawCircle1(){
        let trackLayer = CAShapeLayer()
        trackLayer.frame  = CGRect(x: 10, y: 100, width: 17, height: 17)
        let circularPath1 = UIBezierPath(roundedRect: CGRect(x: 10, y:50, width: 17, height: 17), cornerRadius: 40)
        trackLayer.path = circularPath1.cgPath
        trackLayer.lineWidth = 10
        trackLayer.fillColor = UIColor.orange.cgColor
        trackLayer.lineCap = CAShapeLayerLineCap.round
        contentView.layer.addSublayer(trackLayer)
    }
    func drawCircle2(){
        let trackLayer = CAShapeLayer()
        trackLayer.frame  = CGRect(x: 10, y: 130, width: 17, height: 17)
        let circularPath1 = UIBezierPath(roundedRect: CGRect(x: 10, y:50, width: 17, height: 17), cornerRadius: 40)
        trackLayer.path = circularPath1.cgPath
        trackLayer.lineWidth = 10
        trackLayer.fillColor = UIColor.cyan.cgColor
        trackLayer.lineCap = CAShapeLayerLineCap.round
        contentView.layer.addSublayer(trackLayer)
    }
    func drawCircle3(){
        let trackLayer = CAShapeLayer()
        trackLayer.frame  = CGRect(x: 10, y: 160, width: 17, height: 17)
        let circularPath1 = UIBezierPath(roundedRect: CGRect(x: 10, y:50, width: 17, height: 17), cornerRadius: 40)
        trackLayer.path = circularPath1.cgPath
        trackLayer.lineWidth = 10
        trackLayer.fillColor = UIColor.yellow.cgColor
        trackLayer.lineCap = CAShapeLayerLineCap.round
        contentView.layer.addSublayer(trackLayer)
    }
    func drawCircle4(){
        let trackLayer = CAShapeLayer()
        trackLayer.frame  = CGRect(x: 10, y: 190, width: 17, height: 17)
        let circularPath1 = UIBezierPath(roundedRect: CGRect(x: 10, y:50, width: 17, height: 17), cornerRadius: 40)
        trackLayer.path = circularPath1.cgPath
        trackLayer.lineWidth = 10
        trackLayer.fillColor = UIColor.red.cgColor
        trackLayer.lineCap = CAShapeLayerLineCap.round
        contentView.layer.addSublayer(trackLayer)
    }
    
}

//
//  ResultViewController.swift
//  Quiz
//
//  Created by ohtatomotaka on 2015/02/10.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

//背景
//@IBOutlet weak var myImageView: UIImageView!
//var myImageView: UIImageView!

class ResultViewController: UIViewController {
    
    @IBOutlet var label3:UILabel!
    @IBOutlet var label4:UILabel!
    @IBOutlet var label5:UILabel!

    @IBOutlet var myImageView: UIImageView!
     var correctAnswer:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        if correctAnswer == 10{
            label3.text = String("10問中10問正解しました！！！")
            //label4.textcolor = UIcolor.redColor()
            label4.text = String("100％")
            label5.text = String("あなたは若者界の神様です")
            myImageView.image = UIImage(named:"tengoku.jpg")
        }else if correctAnswer == 9{
            label3.text = String("10問中9問正解しました！！")
            label4.text = String("90％")
            label5.text = String("あなたはシティーボーイ！")
            myImageView.image = UIImage(named:"tokai.jpg")
        }else if correctAnswer == 8{
            label3.text = String("10問中8問正解しました。")
            label4.text = String("80％")
            label5.text = String("若者の憧れ！")
            myImageView.image = UIImage(named: "sibuya.jpg")
        }else if correctAnswer == 7{
            label3.text = String("10問中7問正解しました。")
            label4.text = String("70％")
            label5.text = String("もうひといき！")
            myImageView.image = UIImage(named: "town.jpg")
        }else if correctAnswer == 6{
            label3.text = String("10問中6問正解しました。")
            label4.text = String("60％ ")
            label5.text = String("まあまあですね")
            myImageView.image = UIImage(named: "sitamati.jpg")
        }else if correctAnswer == 5{
            label3.text = String("10問中5問正解しました。")
            label4.text = String("50％")
            label5.text = String("可もなく不可もなく")
            myImageView.image = UIImage(named: "farm.jpg")
        }else if correctAnswer == 4{
            label3.text = String("10問中4問正解しました。")
            label4.text = String("40％")
            label5.text = String("若者言葉って難しいですね‥")
            myImageView.image = UIImage(named: "inaka1.jpg")
        }else if correctAnswer == 3{
            label3.text = String("10問中3問正解しました。")
            label4.text = String("30％")
            label5.text = String("がんばりましょう‥")
            myImageView.image = UIImage(named: "inaka2.jpg")
        }else if correctAnswer == 2{
            label3.text = String("10問中2問正解しました。")
            label4.text = String("20％")
            label5.text = String("まぐれの正解ですか？")
            myImageView.image = UIImage(named: "inaka3.jpg")
        }else if correctAnswer == 1{
            label3.text = String("10問中1問正解しました。")
            label4.text = String("10％")
            label5.text = String("おつかれさまです")
            myImageView.image = UIImage(named: "siba.jpg")
        }else if correctAnswer == 0{
            label3.text = String("10問中0問正解しました。")
            label4.text = String("0％")
            label5.text = String("時代に追いつきましょう")
            myImageView.image = UIImage(named: "tuti.jpg")
        // Do any additional setup after loading the view.
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

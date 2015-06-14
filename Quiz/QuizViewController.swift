//
//  QuizViewController.swift
//  Quiz
//
//  Created by ohtatomotaka on 2015/02/10.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    //出題数
    var questionNumber:Int = 10
    
    //現在の問題数
    var sum:Int = 0
    
    //正解数
    var correctAnswer:Int = 0
    
    //乱数
    var random:Int = 0
    
    //クイズを格納する配列
    var quizArray = [NSMutableArray]()
    
    //クイズを表示するTextView
    @IBOutlet var quizTextView: UITextView!
    
    //選択肢のボタン
    @IBOutlet var choiceButtons: Array<UIButton>!

    //正解、不正解のラベル
    @IBOutlet var label1:UILabel!
    @IBOutlet var label2:UILabel!
    
    //count
    var count:Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //------------------------ここから下にクイズを書く------------------------//
        quizArray.append(["夜中寝ないことの意味を持つ単語は？","オール","テール","アール",1])
        quizArray.append(["バイブスの意味は？","ケータイのバイブ音","テンション","バイトの時間",2])
        quizArray.append(["仕事や学校が終わるとすぐに家に変える人たちのことを表す単語は？","GHQ","PIQ","KFC",1])
        quizArray.append(["「oc」の意味は？","おっちょこちょい","おいしい","お家",2])
        quizArray.append(["「今日の髪型、与謝野ってるんだよね」この髪型はどんな状態か？","結んでいる","整っている","乱れている",3])
        quizArray.append(["「あいつのメール幕の内なんだよねー。」これはどんなメールか？","内容が多く分かりにくい","ご飯の誘い","内容が少なく分かりやすい",1])
        quizArray.append(["とにかく急ぐことを何というか？","Aダッシュ","Bダッシュ","Cダッシュ",2])
        quizArray.append(["恋愛に対して積極的に見えて、実際は奥手な男性のことを何というか？","肉詰めピーマン系男子","ロールキャベツ系男子","アスパラベーコン巻き系男子",3])
        quizArray.append(["「ウーロン茶」という人の特徴を表す単語の意味は？","お茶ばかり飲む人","うざい茶髪のロン毛の人","肌が茶色い人",2])
        quizArray.append(["「JK2」の意味は？","JR快速2分遅れ","女性看護婦20代","女子高校2年生",3])
        quizArray.append(["「いもる」の意味とは？","芋を食べる","緊張してオドオドする","胃がもたつく",2])

        //------------------------ここから下にクイズを書く------------------------//
        choiceQuiz()
        
          }
    
    func choiceQuiz() {
        println(quizArray.count)
        //クイズの問題文をシャッフルしてTextViewにセット
        random = Int(arc4random_uniform(UInt32(quizArray.count)))
        quizTextView.text = quizArray[random][0] as! NSString as String
        
        //選択肢のボタンにそれぞれ選択肢のテキストをセット
        for var i = 0; i < choiceButtons.count; i++ {
            choiceButtons[i].setTitle(quizArray[random][i+1] as! NSString as String, forState: .Normal)
            
            //どのボタンが押されたか判別するためのtagをセット
            choiceButtons[i].tag = i + 1;
        }
    }
    @IBAction func choiceAnswer(sender: UIButton) {
        sum++
        println("random \(random)")
        if quizArray[random][4] as! Int == sender.tag {
            //正解数を増やす
            correctAnswer++
            if count == 0{
            label1.text = String("正解")
            }
        }else{
            if count == 0{
            label2.text = String("不正解")
            }
        }
        
        //解いた問題数の合計が予め設定していた問題数に達したら結果画面へ
        if sum == questionNumber {
            performSegueToResult()
        }
        quizArray.removeAtIndex(random)
        choiceQuiz()
    }
    
    func performSegueToResult() {
        performSegueWithIdentifier("toResultView", sender: nil)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "toResultView") {
            
            var ResultView : ResultViewController = segue.destinationViewController as! ResultViewController

            ResultView.correctAnswer = self.correctAnswer
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}





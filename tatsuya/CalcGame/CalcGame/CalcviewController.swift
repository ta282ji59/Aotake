import UIKit

class CalcviewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    var answer = 0
    var point = 0
    var time = 20
    var timer:Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countTime), userInfo: nil, repeats: true)
        
        makeNewQuestion()
        setButtonTitle()
        
        button1.addTarget(self, action: #selector(onButton(_:)), for: .touchUpInside)
        button2.addTarget(self, action: #selector(onButton(_:)), for: .touchUpInside)
        button3.addTarget(self, action: #selector(onButton(_:)), for: .touchUpInside)
        button4.addTarget(self, action: #selector(onButton(_:)), for: .touchUpInside)
    }
    
    @objc func countTime(){
        time-=1
        timeLabel.text = "残り\(time)秒"
        if time == 0{
            timer?.invalidate()
            performSegue(withIdentifier: "result", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! ResultViewController //ResultViewControllerクラスのpointにpointをあげる
        nextVC.point = point
    }
    
    @objc func onButton(_ sender:UIButton){
        let input = Int(sender.currentTitle!)
        if input == answer{
            resultLabel.text = "先ほどの問題は正解です。"
            point += 10
        }
        else{
            resultLabel.text = "先ほどの問題は不正解です。"
            point -= 10
        }
        makeNewQuestion()
        setButtonTitle()
    }
    
    func makeNewQuestion(){
        let num1 = Int.random(in:1...9)
        let num2 = Int.random(in:1...9)
        questionLabel.text = "\(num1)+\(num2) = "
        answer = (num1 + num2)
    }
    
    func setButtonTitle(){
        var answerList = [answer]
        while answerList.count < 4{
            let randomAnswer = Int.random(in:0...10)
            if !answerList.contains(randomAnswer){
                answerList.append(randomAnswer)
            }
        }
        answerList.shuffle()
        button1.setTitle(String(answerList[0]),for: .normal)
        button2.setTitle(String(answerList[1]),for: .normal)
        button3.setTitle(String(answerList[2]),for: .normal)
        button4.setTitle(String(answerList[3]),for: .normal)
    }
    

}

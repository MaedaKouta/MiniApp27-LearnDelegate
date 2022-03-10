//
//  ViewController.swift
//  MiniApp27-LearnDelegate
//
//  Created by 前田航汰 on 2022/03/08.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.delegate = self
        return cell
    }

}

extension ViewController: CustomCellDelegate {
    func didTapButton() {
        print("..依頼を受けた処理が開始")
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "Next") as! SecondViewController
        self.present(secondVC, animated: true, completion: nil)
        print("...依頼を受けた処理が終了")
    }
}

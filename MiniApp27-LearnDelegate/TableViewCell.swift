//
//  TableViewCell.swift
//  MiniApp27-LearnDelegate
//
//  Created by 前田航汰 on 2022/03/08.
//

import UIKit

protocol CustomCellDelegate: AnyObject {
    func didTapButton()
}

class TableViewCell: UITableViewCell {

    weak var delegate: CustomCellDelegate?

    @IBAction func didTapButton(_ sender: Any) {
        print(".処理を依頼開始！")
        delegate?.didTapButton()
        print("....処理完了！")
    }

}

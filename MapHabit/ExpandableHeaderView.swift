//
//  ExpandableHeaderView.swift
//  MapHabit
//
//  Created by Dhananjaya Somanna on 10/14/18.
//  Copyright © 2018 Dhananjaya Somanna. All rights reserved.
//

import UIKit

protocol ExpandableHeaderViewDelegate {
    func toggleSection(header: ExpandableHeaderView, section: Int)
}

class ExpandableHeaderView: UITableViewHeaderFooterView {

    var delegate: ExpandableHeaderViewDelegate?
    var section: Int!
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(selectHeaderAction)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func selectHeaderAction(gestureRecognizer: UITapGestureRecognizer) {
        let cell = gestureRecognizer.view as! ExpandableHeaderView
        delegate?.toggleSection(header: self, section: cell.section)
    }
    
    func customInit(title: String, section: Int, delegate: ExpandableHeaderViewDelegate) {
        self.textLabel?.text = title
        self.section = section
        self.delegate = delegate
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.textLabel?.textColor = UIColor.white
        // self.contentView.backgroundColor = UIColor.darkGray
        self.textLabel?.font = UIFont(name:"Helvetica Neue",size:18)
        self.setGradientBackground(colorOne: Colors.lightblue, colorTwo: Colors.darkblue)
        
        //let headerImage = UIImage(named: "movies.png");
        //let imageViewGame = UIImageView(image: headerImage);
        //self.contentView.addSubview(imageViewGame)

    }
}

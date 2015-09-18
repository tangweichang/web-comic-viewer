//
//  ViewController.swift
//  Webcomic Viewer
//
//  Created by TangWeichang on 9/15/15.
//  Copyright © 2015 TangWeichang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var comicImage: UIImageView!
    var num = 0
    let urlArray = ["http://imgs.xkcd.com/comics/barrel_cropped_(1).jpg","http://imgs.xkcd.com/comics/tree_cropped_(1).jpg","http://imgs.xkcd.com/comics/island_color.jpg","http://imgs.xkcd.com/comics/landscape_cropped_(1).jpg","http://imgs.xkcd.com/comics/blownapart_color.jpg","http://imgs.xkcd.com/comics/irony_color.jpg","http://imgs.xkcd.com/comics/girl_sleeping_noline_(1).jpg","http://imgs.xkcd.com/comics/red_spiders_small.jpg","http://imgs.xkcd.com/comics/i_could_care_less.png","http://imgs.xkcd.com/comics/footprints.png","http://imgs.xkcd.com/comics/xkcd_survey.png","http://imgs.xkcd.com/comics/car_model_names.png","http://imgs.xkcd.com/comics/engineer_syllogism.png","http://imgs.xkcd.com/comics/magic_tree.png","http://imgs.xkcd.com/comics/synonym_movies_2.png","http://imgs.xkcd.com/comics/kitchen_tips.png","http://imgs.xkcd.com/comics/board_game.png","http://imgs.xkcd.com/comics/back_seat.png","http://imgs.xkcd.com/comics/every_seven_seconds.png","http://imgs.xkcd.com/comics/bubblegum.png","http://imgs.xkcd.com/comics/driving.png","http://imgs.xkcd.com/comics/vet.png","http://imgs.xkcd.com/comics/the_sky.png","http://imgs.xkcd.com/comics/exoplanet_names_2.png","http://imgs.xkcd.com/comics/magic_school_bus.png","http://imgs.xkcd.com/comics/council_of_300.png","http://imgs.xkcd.com/comics/hack.png","http://imgs.xkcd.com/comics/cell_phones.png","http://imgs.xkcd.com/comics/permanence.png","http://imgs.xkcd.com/comics/magic_tree.png","http://imgs.xkcd.com/comics/trebuchet.png","http://imgs.xkcd.com/comics/inside_joke.png","http://imgs.xkcd.com/comics/making_things_difficult.png"]
    
    @IBAction func random(sender: AnyObject) {
        num = Int(arc4random_uniform(UInt32(urlArray.count)))
        let url = NSURL(string: urlArray[num])
        let urlRequest = NSURLRequest(URL: url!)
        NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue()) { (response, data, error) -> Void in
            if error != nil {
                print(error)
            } else {
                if let cartoon = UIImage(data:data!) {
                    self.comicImage.image = cartoon
                }
                
            }
        }

    }
    
    @IBAction func prev(sender: AnyObject) {
        if num > 0 {
            num = num - 1
            let url = NSURL(string: urlArray[num])
            let urlRequest = NSURLRequest(URL: url!)
            NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue()) { (response, data, error) -> Void in
                if error != nil {
                    print(error)
                } else {
                    if let cartoon = UIImage(data:data!) {
                        self.comicImage.image = cartoon
                    }
                    
                }
            }
        }
    }
    
  
    @IBAction func finalPg(sender: AnyObject) {
        num = urlArray.count - 1
        let url = NSURL(string: urlArray[num])
        let urlRequest = NSURLRequest(URL: url!)
        NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue()) { (response, data, error) -> Void in
            if error != nil {
                print(error)
            } else {
                if let cartoon = UIImage(data:data!) {
                    self.comicImage.image = cartoon
                }
                
            }
        }

    }
    @IBAction func first(sender: AnyObject) {
        num = 0
        let url = NSURL(string: urlArray[num])
        let urlRequest = NSURLRequest(URL: url!)
        NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue()) { (response, data, error) -> Void in
            if error != nil {
                print(error)
            } else {
                if let cartoon = UIImage(data:data!) {
                    self.comicImage.image = cartoon
                }
                
            }
        }
    }
    
 
    
    @IBOutlet var finalPage: UIButton!
    @IBAction func next(sender: AnyObject) {
        if num < (urlArray.count - 1) {
            num = num + 1
            let url = NSURL(string: urlArray[num])
            let urlRequest = NSURLRequest(URL: url!)
            NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue()) { (response, data, error) -> Void in
                if error != nil {
                    print(error)
                } else {
                    if let cartoon = UIImage(data:data!) {
                        self.comicImage.image = cartoon
                    }
                    
                }
            }
        }
        

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: urlArray[0])
        let urlRequest = NSURLRequest(URL: url!)
        NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue()) { (response, data, error) -> Void in
            if error != nil {
                print(error)
            } else {
                if let cartoon = UIImage(data:data!) {
                    self.comicImage.image = cartoon
                }
                
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  GameViewController.swift
//  MemoryCardGame
//
//  Created by Chelsea Bhuiyan on 4/15/24.
//

import UIKit

class GameViewController: UIViewController {

    
    
    @IBOutlet weak var cardImageView1: UIImageView!
    
    @IBOutlet weak var cardImageView2: UIImageView!
    
    @IBOutlet weak var cardImageView3: UIImageView!
    
    @IBOutlet weak var cardImageView4: UIImageView!
    
    @IBOutlet weak var cardImageView5: UIImageView!
    
    @IBOutlet weak var cardImageView6: UIImageView!
   
    @IBOutlet weak var cardImageView7: UIImageView!
    
    @IBOutlet weak var cardImageView8: UIImageView!
    
    @IBOutlet weak var cardImageView9: UIImageView!
    
    @IBOutlet weak var cardImageView10: UIImageView!
    
    
    @IBOutlet weak var cardImageView11: UIImageView!
    
    @IBOutlet weak var cardImageView12: UIImageView!
  
override func viewDidLoad() {
        super.viewDidLoad()
        
        displayCards()
        addTapGestureRecognizers()
    }

    // Function to add tap gesture recognizers to all card image views
        func addTapGestureRecognizers() {
            let imageViews = [cardImageView1, cardImageView2, cardImageView3, cardImageView4, cardImageView5, cardImageView6,
                              cardImageView7, cardImageView8, cardImageView9, cardImageView10, cardImageView11, cardImageView12]
            
            for imageView in imageViews {
                guard let imageView = imageView else { continue }
                
                let tapGesture = UITapGestureRecognizer(target: self, action: #selector(cardTapped(_:)))
                imageView.addGestureRecognizer(tapGesture)
                imageView.isUserInteractionEnabled = true
            }
        }
        
        // Function to display the cards by flipping them to show their images
        func displayCards() {
            let imageViews = [cardImageView1, cardImageView2, cardImageView3, cardImageView4, cardImageView5, cardImageView6,
                              cardImageView7, cardImageView8, cardImageView9, cardImageView10, cardImageView11, cardImageView12]
            
            for imageView in imageViews {
                guard let imageView = imageView else { continue }
                
                // Set a placeholder image to each card image view
                imageView.image = UIImage(named: "empty_card_placeholder")
            }
        }

        // Selector function for card tapped gesture
        @objc func cardTapped(_ sender: UITapGestureRecognizer) {
            // Check if the tapped view is an image view
            guard let tappedImageView = sender.view as? UIImageView else { return }
            
            // Check if the image view already has an image
            guard tappedImageView.image != nil else { return }
            
            // Implement logic to flip the card (show the actual image)
            // For now, let's just set a placeholder image to the tapped card
            tappedImageView.image = UIImage(named: "flowerimage1")
        }
    }

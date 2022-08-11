//
//  DataModel.swift
//  UICollectionViewDemo
//
//  Created by admin on 07/06/2022.
//

import Foundation


class DataModelMovies{
    init() {
    }
    
    func getMovieList(completion: @escaping ([Movie]) -> Void) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            completion(self.movies)
        }
    }
    
    private let movies: [Movie] = [
        Movie(image: #imageLiteral(resourceName: "hightown"),titleName: "Hightown",description: "Follows the story of a gay National Marine Fisheries officer, Jackie Quiñones. In her desire to become a cop, she starts investigating a body that washes ashore in Provincetown."),
        Movie(image: #imageLiteral(resourceName: "pennyDreadful"), titleName: "Penny Dreadful", description: "He film centers on a young woman, Penny, who has a phobia of cars and ends up stalked by a maniac hitchhiker preying on her fear."),
        Movie(image: #imageLiteral(resourceName: "siren"), titleName: "Siren", description: "A man searches the lake for the monster that murdered his husband, while that monster falls in love with an unsuspecting visitor.A man searches the lake for .."),
        Movie(image: #imageLiteral(resourceName: "boldType"),titleName: "The Bold Type", description: "The Bold Type is inspired by the life of Cosmopolitan editor in chief, Joanna Coles. The show is a glimpse into the outrageous lives and loves of those responsible for a global women's magazine."),
        Movie(image: #imageLiteral(resourceName: "inTheDark"), titleName: "In The Dark", description: "After an accident, a woman hires a caretaker to help her adjust to life as a blind woman. Before long, she is embroiled in a fight for her life."),
        Movie(image: #imageLiteral(resourceName: "dcLegendsOfTomorrow"), titleName:"DC Legends of Tomorrow", description: "DC's Legends of Tomorrow, based on the characters of DC comics, is the fourth series set in the Arrowverse, after Arrow, The Flash, and Supergirl. Immediately following the 2016 presidential election, the show's writers and creators gravitated toward the idea of including a Muslim character."),
        Movie(image: #imageLiteral(resourceName: "theHundred"), titleName: "The 100", description: "The 100 follows post-apocalyptic survivors from a space habitat, the Ark, who return to Earth nearly a century after a devastating nuclear apocalypse. The first people sent to Earth are a group of juvenile delinquents who encounter descendants of survivors of the nuclear disaster on the ground."),
        Movie(image: #imageLiteral(resourceName: "blindspot"), titleName: "BlindSpot", description: "Premise. Blindspot focuses on a mysterious tattooed woman who is found naked inside a travel bag in Times Square in New York City by the Federal Bureau of Investigation (FBI). She has no recollection of her past or identity. They discover that her tattoos contain clues to crimes they must solve"),
        Movie(image: #imageLiteral(resourceName: "agentsOfShield"), titleName: "Agents of S.H.I.E.L.D", description: "S.H.I.E.L.D. is a Marvel Comics fictional advanced counterterrorism and intelligence agency charged with investigating and neutralizing paranormal and superhuman threats for global security."),
        Movie(image: #imageLiteral(resourceName: "doomPatrol"), titleName: "Doom Patrol", description: "Doom Patrol is a team of traumatized and downtrodden superheroes, each of whom has suffered a horrible accident that gave them superhuman abilities but also left them scarred and disfigured")
    ]
}

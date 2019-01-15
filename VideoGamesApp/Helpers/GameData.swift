//
//  NetworkManager.swift
//  VideoGamesApp
//
//  Created by Armando D Gonzalez on 8/1/18.
//  Copyright © 2018 Armando D Gonzalez All rights reserved.
//

import Foundation

struct GameData {
    
    private init () {}
    
    static func getCompanyList(completion: @escaping ([VGCompany]) -> Void) {
        completion([GameData.getUbisoft(), GameData.getNintendo(), GameData.getEA()])
    }
    
    static func getUbisoft() -> VGCompany {
        // UBISOFT
        let ubisoftGameList = [Game(name: "Assassin's Creed", description: "", imageName: "assassinsCreedImg", videoName: "assassinsCreedVideo"),
                               Game(name: "Watch Dogs", description: "", imageName: "watchDogsImg", videoName: "watchDogsVideo"),
                               Game(name: "Rainbow Six", description: "", imageName: "rainbowSixImg", videoName: "rainbowSixVideo"),
                               Game(name: "The Division", description: "", imageName: "tomClancysDivisionImg", videoName: "theDivisionVideo")]
        return VGCompany(name: "Ubisoft", description: "With small beginnings in rural France, Yves Guillemot and his four brothers founded Ubisoft in March 1986. Yves still makes an appearance at each E3 conference that Ubisoft holds, and they seem to take pride in the family founded aspect of the company. Although still not breaking the ranks of the kingpins of the western gaming industry such as EA, Microsoft, and Sony, Ubisoft has climbed a long and hard ladder to reach where it is today.", gameList: ubisoftGameList, imageName: "ubisoftImg")
    }
    
    static func getNintendo() -> VGCompany {
        //NINTENDO
        let nintendoGameList = [Game(name: "The Legend of Zelda", description: "", imageName: "theLegendOfZeldaImg", videoName: "theLegendOfZeldaVideo"),
                                Game(name: "Star Fox", description: "", imageName: "starFoxImg", videoName: "starFoxVideo"),
                                Game(name: "Donkey Kong", description: "", imageName: "donkeyKongImg", videoName: "donkeyKongVideo"),
                                Game(name: "Mario Brothers", description: "", imageName: "marioBrosImg", videoName: "marioBrosVideo")]
        return VGCompany(name: "Nintendo", description: "Nintendo is one of the most important gaming monikers, not just in today’s market, but in the entire history of the gaming industry. What once began as a card manufacturer in the late 1800s has evolved and adapted to the market today to give us some of the most beloved franchises of all time. After the video game crash of 1982, many believed the short lived art of video games to be dead in the water, but the release of the original Super Mario Bros. on the the original NES single handedly revitalized the entire market. Who knows, if it weren’t for Nintendo, the gaming industry might not be alive today.", gameList: nintendoGameList, imageName: "nintendoImg")
    }
    
    static func getEA() -> VGCompany {
        //ELECTRONIC ARTS
        let eaGameList = [Game(name: "NBA", description: "", imageName: "nbaImg", videoName: "nbaVideo"),
                          Game(name: "FIFA", description: "", imageName: "fifaImg", videoName: "fifaVideo"),
                          Game(name: "NFL", description: "", imageName: "nflImg", videoName: "nflVideo"),
                          Game(name: "Battlefield", description: "", imageName: "battlefieldImg", videoName: "battlefieldVideo")]
        return VGCompany(name: "Electronic Arts", description: "EA is one of the oldest independent publishers in the industry that still is relevant to any modern gamer. Founded in 1982, this publisher can take much responsibility for the popularization of the yearly iterative model of games with the annual release cycle of their various sports games such as NBA, FIFA, and NFL, all catering to a certain hardcore audience who’ll buy it every year without fail with minimal additions or modifications to the core mechanics. With such a strong foundation, EA was able to acquisition growing game developers such as DICE in Sweden who makes the Battlefield franchise, now one of the most popular FPS franchises ever made. EA have also partnered with Disney to be the sole distributor of any and all Star Wars games. It doesn’t take a genius to know that Star Wars is one of the entertainment industry’s most lucrative intellectual properties, and every Star Wars game that EA has released so far has been a hit.", gameList: eaGameList, imageName: "electronicsArtsImg")
    }
}



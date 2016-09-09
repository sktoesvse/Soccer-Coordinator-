import Foundation
/*
 // We are using arrays here to organize participant info..
 // I would have liked to use a function to cut down on the repetition and total character count for this initial part.
 */
let teamParticipants : [[ String: String]] = [
    ["name": "Joe Smith", "height": "42", "soccerExperience": "true", "guardiansName": "Jim and Jan Smith"],
    ["name": "Jill Tanner", "height": "36", "soccerExperience": "true", "guardiansName": "Clara Tanner"],
    ["name": "Bill Bon", "height": "43", "soccerExperience": "true", "guardiansName": "Sara and Jenny Bon"],
    ["name": "Eva Gordon", "height": "45", "soccerExperience": "false", "guardiansName": "Wendy and Mike Gordon"],
    ["name": "Kimmy Stein", "height": "41", "soccerExperience": "false", "guardiansName": "Bill and Hillary Stein"],
    ["name": "Sammy Adams", "height": "45", "soccerExperience": "false", "guardiansName": "Jeff Adams"],
    ["name": "Karl Saygan", "height": "42", "soccerExperience": "true", "guardiansName": "Heather Bledsoe"],
    ["name": "Suzane Greenberg", "height": "44", "soccerExperience": "true", "guardiansName": "Henrietta Dumas"],
    ["name": "Sal Dali", "height": "41", "soccerExperience": "false", "guardiansName": "Gala Dali"],
    ["name": "Joe Kavalier", "height": "39", "soccerExperience": "false", "guardiansName": "Sam and Elaine Kavalier"],
    ["name": "Ben Finkelstein", "height": "44", "soccerExperience": "false", "guardiansName": "Aaron and Jill Finkelstein"],
    ["name": "Diego Soto", "height": "41", "soccerExperience": "true", "guardiansName": "Robin and Sarika Soto"],
    ["name": "Chloe Alaska", "height": "47", "soccerExperience": "false", "guardiansName": "David and Jamie Alaska"],
    ["name": "Arnold Willis", "height": "43", "soccerExperience": "false", "guardiansName": "Claire Willis"],
    ["name": "Phillip Helm", "height": "44", "soccerExperience": "true", "guardiansName": "Thomas Helm and Eva Jones"],
    ["name": "Les Clay", "height": "42", "soccerExperience": "true", "guardiansName": "Wynonna Brown"],
    ["name": "Herschel Krustofski", "height": "45", "soccerExperience": "true", "guardiansName": "Hyman and Rachel Herschel Krustofski"],
    ["name": "Matt Gill", "height": "40", "soccerExperience": "false", "guardiansName": "Charles and Sylvia Gill"] ]
teamParticipants.count
///// Individual soccerTeam arrays
var dragons: [[String: String]] = []
var raptors: [[String: String]] = []
var sharks: [[String: String]] = []
//// We need to create an array that seperates experienced from non experienced players to start our sorting logic. ///// xpFreePlayer == no exp.
var xpPlayers: [[String: String]] = []
var xpFreePlayers: [[String: String]] = []
// Creating a for:in/if:else statement to correctly populate //the above arrays based on experience.
for sortingXp in teamParticipants {
    if sortingXp["soccerExperience"] == "true" {
        xpPlayers.append(sortingXp)
    } else {
        xpFreePlayers.append(sortingXp)
    }}
//Logic for distribution of players with experience in mind.
for xpPlayers in teamParticipants {
    if dragons.count < sharks.count {
        dragons.append(xpPlayers)
    } else if sharks.count < raptors.count {
        sharks.append(xpPlayers)
    } else {
        raptors.append(xpPlayers)
    }}
/// meet dates as stored values
let dragonMeet = "March 17th, at 1pm"
let sharkMeet = "March 17th, at 3pm"
let raptorMeet = "March 18th, at 1pm"
/// letters to parents
for sortingXp in dragons {
    print(" Dear \(sortingXp["guardiansName"]! as String), \n We want to congratulate you on \(sortingXp["name"]! as String)'s invitation to join our soccer league. The first practice will be on \(dragonMeet). Enclosed is the rest of the information needed to get started.")        }
for sortingXp in raptors {
    print(" Dear \(sortingXp["guardiansName"]! as String), \n We want to congratulate you on \(sortingXp["name"]! as String)'s invitation to join our soccer league. The first practice will be on \(raptorMeet). Enclosed is the rest of the information needed to get started.")
}
for sortingXp in sharks {
    print(" Dear \(sortingXp["guardiansName"]! as String), \n We want to congratulate you on \(sortingXp["name"]! as String)'s invitation to join our soccer league. The first practice will be on \(sharkMeet). Enclosed is the rest of the information needed to get started.")
}

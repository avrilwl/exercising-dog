//
//  ExerciseList.swift
//  questionnaire
//
//  Created by Li Jiansheng on 21/8/24.
//

import Foundation

struct Exercise: Identifiable {
    let id = UUID()
    let name: String
    let description: String
}

let Exercises: [Exercise] = [
    Exercise(name: "Push-Up", description: "Push-ups are a foundational bodyweight exercise that effectively strengthens the upper body and core. By engaging the chest, shoulders, and triceps, push-ups build muscular endurance and power while also activating the core muscles for stability. This versatile exercise can be modified in various ways to target different muscle groups and accommodate different fitness levels, making it suitable for both beginners and advanced athletes. Additionally, push-ups require minimal equipment, making them a convenient and efficient addition to any workout routine aimed at improving overall strength and fitness."),
    Exercise(name: "Burpees", description: "Burpees are a high-intensity, full-body exercise that combines strength and cardiovascular training in one dynamic movement. This exercise involves a sequence of squatting, jumping into a plank position, performing a push-up, and then jumping back up to a standing position. Burpees effectively engage multiple muscle groups, including the chest, arms, legs, and core, while also raising the heart rate for an excellent cardiovascular workout. Their combination of explosive movements and endurance challenges makes burpees a powerful tool for improving overall fitness, increasing metabolic rate, and building both strength and stamina."),
    Exercise(name: "Plank shoulder taps", description: "Plank shoulder taps are an effective bodyweight exercise that enhances core stability, balance, and upper body strength. By performing shoulder taps while holding a plank position, this exercise targets the core muscles, including the abs and obliques, to maintain a stable and controlled posture. The movement also engages the shoulders and arms, improving upper body strength and coordination. Additionally, plank shoulder taps help develop better proprioception and balance as the body must resist rotation and shifting, making it a valuable addition to any fitness routine aimed at strengthening the core and improving overall stability."),
    Exercise(name: "Clapping push ups", description: "Clapping push-ups are a powerful exercise that enhances overall fitness by integrating explosive movements into the classic push-up. This advanced variation boosts upper body strength, particularly in the chest, shoulders, and triceps, while also improving muscle activation and power. The explosive nature of the exercise increases caloric burn and engages the core for better stability and balance. Additionally, clapping push-ups enhance agility and coordination, making them valuable for athletic performance and functional fitness. By adding this challenging exercise to a workout routine, individuals can achieve more significant strength gains, break through training plateaus, and improve overall physical performance."),
    Exercise(name: "Side Plank", description: "The side plank is a core-strengthening exercise that targets the obliques, glutes, and shoulders while enhancing overall stability and balance. By holding a lateral position with one forearm or hand on the ground and the body aligned in a straight line, the side plank effectively engages the muscles along the sides of the torso. This exercise helps improve core strength and endurance, supports better posture, and can reduce the risk of lower back pain by reinforcing the muscles that stabilize the spine. Its simplicity and effectiveness make the side plank a valuable addition to any core workout routine.")

]

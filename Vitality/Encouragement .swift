//
//  Encouragement .swift
//  Vitality
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct Encouragement_: View {
    
    
    @State private var generatedEncourage: String = "Tap button for a positive word :)"
    
    let adjectives = ["You are capable of amazing things! ✨",
                      "Every small step counts toward your journey! 🌟",
                      "You deserve all the love and kindness in the world! 💕",
                      "Your feelings are valid, and you're doing great! 🌈",
                      "Take it one breath at a time - you've got this! 🌸",
                      "You are enough, exactly as you are! 💖",
                      "Progress, not perfection - celebrate every win! 🎉",
                      "Your mental health matters, and so do you! 🦋",
                      "You have survived every difficult day so far! 💪",
                      "It's okay to rest and recharge when you need to! 🌙",
                      "Your strength shines through even in difficult moments! ⭐",
                      "You are worthy of compassion, especially from yourself! 🌺",
                      "Every day is a new opportunity to grow and heal! 🌱",
                      "Your voice matters and deserves to be heard! 🗣️",
                      "You are braver than you believe and stronger than you seem! 🦁",
                      "It's okay to not be okay - healing isn't linear! 🌊",
                      "You are creating your own path at your own pace! 🛤️",
                      "Your authenticity is your superpower! 💫",
                      "You have the power to rewrite your story! 📖",
                      "Trust yourself - you know what you need! 🌟",
                      "Your boundaries are important and valid! 🚧",
                      "You are allowed to take up space in this world! 🌍",
                      "Your journey is unique and beautiful! 🦋",
                      "You are resilient and have overcome so much! 🌈",
                      "It's okay to ask for help - that shows strength! 🤝",
                      "You are deserving of love and happiness! 💝",
                      "Your dreams and goals are worth pursuing! 🎯",
                      "You have the courage to face whatever comes! 🌟",
                      "Your inner light can never be dimmed! 💡",
                      "You are worthy of respect and kindness! 👑",
                      "Every breath is a victory - keep going! 🌸",
                      "You are enough, just as you are right now! 💖",
                      "Your feelings are temporary, but your strength is permanent! 🌺",
                      "You have everything within you to succeed! 🌟",
                      "Trust the process - you're exactly where you need to be! 🌱",
                      "Your intuition is powerful - listen to it! 🔮",
                      "You are the author of your own happiness! ✍️",
                      "It's okay to put yourself first sometimes! 🌸",
                      "Your sensitivity is a gift, not a weakness! 💝",
                      "You are allowed to change your mind and grow! 🌱",
                      "Your scars tell a story of survival and strength! 🌟",
                      "You don't have to be perfect to be worthy of love! 💕",
                      "Your heart is beautiful, even when it's broken! 💖",
                      "You are allowed to feel proud of how far you've come! 🎉",
                      "Your struggles don't define you - your courage does! 🦋",
                      "You are worthy of all the good things coming your way! 🌈",
                      "It's okay to take things one moment at a time! ⏰",
                      "Your compassion for others starts with compassion for yourself! 🌺",
                      "You are stronger than any storm you're facing! ⛈️",
                      "Your worth isn't determined by your productivity! 💫",
                      "You are allowed to prioritize your mental health! 🧠",
                      "Your vulnerability is actually your greatest strength! 💪",
                      "You have the right to set boundaries that protect your peace! 🕊️",
                      "Your past doesn't dictate your future - you do! 🚀",
                      "You are allowed to outgrow people and situations! 🌱",
                      "Your self-care isn't selfish - it's necessary! 🛁",
                      "You are worthy of relationships that uplift you! 💕",
                      "Your mental health journey is valid, no matter how it looks! 🌟",
                      "You are allowed to take breaks without feeling guilty! 🌙",
                      "Your emotions are messengers - listen to what they're telling you! 💌",
                      "You are more resilient than you realize! 🌊",
                      "Your kindness to yourself sets the tone for everything else! 🌸",
                      "You are allowed to celebrate small victories! 🎊",
                      "Your healing journey is sacred and important! ✨",
                      "You don't need anyone's permission to be yourself! 👑",
                      "Your mental health is just as important as your physical health! 🏥",
                      "You are allowed to say no without explaining yourself! 🚫",
                      "Your worth exists independent of others' opinions! 💎",
                      "You are braver than your fears and bigger than your doubts! 🦋",
                      "Your journey to self-love is the most important one you'll take! 💖",
                      "You are allowed to forgive yourself for past mistakes! 🌅",
                      "Your peace of mind is worth protecting fiercely! 🛡️"]
    
 
    
    var body: some View {
        
        VStack {
            
            Text(generatedEncourage)
            //changing the text color to brown:
                .foregroundColor(Color(red: 0.331, green: 0.272, blue: 0.252))
                .font(.largeTitle)
                
            
                .padding()
            
                .padding()

            Button("Click here "){
                
                if let randomAdjective = adjectives.randomElement()
                  {
                    
                    generatedEncourage = "\(randomAdjective)"
                }
            }
            //text color in the button is sand
            .foregroundColor(Color(red: 0.937, green: 0.893, blue: 0.811))
            //button color dark brown
            .background(Color(red: 0.331, green: 0.272, blue: 0.252))
                      .cornerRadius(100)
        }
        //background color sand **placement must be outside of the VStack bracket
        .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background {
                    (Color(red: 0.937, green: 0.893, blue: 0.811))
                        .ignoresSafeArea()
                }
        
    }
        
}
    
#Preview {
    Encouragement_()
}

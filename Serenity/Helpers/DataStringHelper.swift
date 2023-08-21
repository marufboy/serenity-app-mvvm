//
//  DataStringHelper.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 16/08/23.
//

import Foundation

func getRandomSentence(ofType type: SentenceType) -> String {
    let filteredSentences = sentenceDataMock.filter { $0.type == type }
    guard let selectedSentence = filteredSentences.randomElement()?.text else { return "" }
    return selectedSentence
}

func getTutorialArray() -> [String] {
    let filteredSentences = sentenceDataMock.filter { $0.type == .message }
    return filteredSentences.map{ $0.text }
}

let sentenceDataMock: [SentenceModel] = [
    SentenceModel(text: "How have you been spending your time lately?", type: .interactive),
    SentenceModel(text: "Have you had any exciting experiences or adventures recently?", type: .interactive),
    SentenceModel(text: "What have you been up to today?", type: .interactive),
    SentenceModel(text: "Can you tell me about something interesting that happened to you recently?", type: .interactive),
    SentenceModel(text: "How has your week been so far?", type: .interactive),
    SentenceModel(text: "Have you learned anything new or gained any insights lately?", type: .interactive),
    SentenceModel(text: "Is there anything you've been working on that you're particularly proud of?", type: .interactive),
    SentenceModel(text: "How have you been feeling both mentally and physically lately?", type: .interactive),
    SentenceModel(text: "Have you had any notable conversations or interactions with others lately?", type: .interactive),
    SentenceModel(text: "What are some highlights or lowlights of your recent experiences?", type: .interactive),
    //MARK: Boundaries interactive message
    SentenceModel(text: "I am doing the best I can, and that's all I can ask of myself.", type: .affirmation),
    SentenceModel(text: "I trust myself to make the right decisions.", type: .affirmation),
    SentenceModel(text: "I am capable and confident in my abilities.", type: .affirmation),
    SentenceModel(text: "I am in control of my thoughts and emotions.", type: .affirmation),
    SentenceModel(text: "I choose to focus on the present moment and let go of what I can't control.", type: .affirmation),
    SentenceModel(text: "I am strong and resilient, and I can overcome any obstacles.", type: .affirmation),
    SentenceModel(text: "I am worthy and deserving of happiness and success.", type: .affirmation),
    SentenceModel(text: "I have the power to create positive change in my life.", type: .affirmation),
    SentenceModel(text: "I am grateful for all the good things in my life and choose to focus on them.", type: .affirmation),
    SentenceModel(text: "I am enough just as I am, and I don't need to be perfect.", type: .affirmation),
    SentenceModel(text: "I am capable of handling whatever comes my way.", type: .affirmation),
    SentenceModel(text: "I am resilient and can bounce back from setbacks.", type: .affirmation),
    SentenceModel(text: "I am worthy of love and respect from myself and others.", type: .affirmation),
    SentenceModel(text: "I trust myself to make good decisions for myself.", type: .affirmation),
    SentenceModel(text: "I am learning and growing every day, and that's what matters.", type: .affirmation),
    SentenceModel(text: "I am strong enough to face any challenge.", type: .affirmation),
    SentenceModel(text: "I am deserving of happiness and fulfillment.", type: .affirmation),
    SentenceModel(text: "I am grateful for all the good things in my life, big and small.", type: .affirmation),
    SentenceModel(text: "I choose to focus on the positives in my life and not dwell on the negatives.", type: .affirmation),
    SentenceModel(text: "I believe in myself and my ability to achieve my goals.", type: .affirmation),
    SentenceModel(text: "It's normal to have doubts, but I trust myself to make the right decisions.", type: .affirmation),
    SentenceModel(text: "It's okay to take a break and recharge when I need it.", type: .affirmation),
    SentenceModel(text: "It's normal to make mistakes, but I learn and grow from them.", type: .affirmation),
    SentenceModel(text: "It's okay to ask for help when I need it.", type: .affirmation),
    SentenceModel(text: "It's normal to have ups and downs, but I know that everything will work out in the end.", type: .affirmation),
    SentenceModel(text: "It's okay to not have everything figured out right now.", type: .affirmation),
    SentenceModel(text: "It's normal to feel anxious sometimes, but I have the tools to manage my anxiety.", type: .affirmation),
    SentenceModel(text: "It's okay to set boundaries and prioritize my own well-being.", type: .affirmation),
    SentenceModel(text: "It's normal to have different opinions and perspectives, and that's what makes me unique.", type: .affirmation),
    SentenceModel(text: "It's okay to take things one step at a time and not have everything planned out.", type: .affirmation),
    //MARK: Boundaries affirmation words
    SentenceModel(text: "Did you know that if Thomas Edison had given up on his 10,000th attempt, the world might never have seen the invention of the light bulb? So, keep persevering and remember that each attempt brings you one step closer to success.", type: .story),
    SentenceModel(text: "If J.K. Rowling had given up after being rejected by 12 publishers, we may never have known the story of Harry Potter. So, keep going and don't let rejection hold you back.", type: .story),
    SentenceModel(text: "Walt Disney was fired from his job at a newspaper for not being creative enough. If he had given up then, we wouldn't have Disneyland or any of his other creations. Remember his story and keep pushing your creativity.", type: .story),
    SentenceModel(text: "If Oprah Winfrey had given up after facing numerous obstacles and setbacks, she would never have become the media mogul she is today. Keep persevering and never let obstacles discourage you.", type: .story),
    SentenceModel(text: "The Beatles were rejected by several record labels before they finally made it big. If they had given up, we may never have heard their music. Keep going and don't let rejection stop you.", type: .story),
    SentenceModel(text: "Stephen King's first novel, Carrie, was rejected 30 times before it was published. If he had given up, we wouldn't have all the great books and movies he has created. Keep writing and don't let rejection hold you back.", type: .story),
    SentenceModel(text: "If Michael Jordan had given up after being cut from his high school basketball team, he wouldn't have become one of the greatest basketball players of all time. Keep practicing and never let failure discourage you.", type: .story),
    SentenceModel(text: "Vincent van Gogh only sold one painting during his lifetime. If he had given up on his art, we wouldn't have the beautiful masterpieces he created. Keep creating and don't let lack of recognition stop you.", type: .story),
    SentenceModel(text: "If Marie Curie had given up after facing discrimination and sexism in the scientific community, she wouldn't have won two Nobel Prizes. Keep pursuing your passions and don't let discrimination discourage you.", type: .story),
    SentenceModel(text: "Sylvester Stallone was rejected over 1,500 times before his script for Rocky was accepted. If he had given up, we may never have seen one of the most iconic movies of all time. Keep pushing and don't let rejection hold you back.", type: .story),
    SentenceModel(text: "If Nelson Mandela had given up on his fight against apartheid, South Africa may never have become the free and democratic country it is today. Keep fighting for what you believe in and don't let adversity stop you.", type: .story),
    //MARK: Boundaries story
    SentenceModel(text: "Hello there! Have you ever found yourself feeling overwhelmed or stressed out during the day?", type: .message),
    SentenceModel(text: "Sometimes it can be hard to stay focused and motivated, especially when there's so much going on around us.", type: .message),
    SentenceModel(text: "But what if I told you that there's an app that can help you practice breathing exercises to calm your mind and boost your mood, as well as provide self-talk to motivate you to be enthusiastic about tackling the day?", type: .message),
    SentenceModel(text: "This app features a simple and easy-to-use interface that allows you to select from a variety of breathing exercises designed to help you relax, reduce anxiety, and improve your overall well-being.", type: .message),
    SentenceModel(text: "Whether you need a quick moment of calm during a busy day or a longer meditation session to unwind, this app has got you covered.", type: .message),
    SentenceModel(text: "But that's not all! This app also includes motivational self-talk to help you start your day off on the right foot.", type: .message),
    SentenceModel(text: "With inspiring messages and affirmations designed to boost your energy and enthusiasm, you'll be ready to take on any challenge that comes your way.", type: .message),
    SentenceModel(text: "So, if you're looking for a way to reduce stress, boost your mood, and stay motivated throughout the day, I highly recommend giving this app a try.", type: .message),
    SentenceModel(text: "So why not you try it today and see how it can help you live your best life?", type: .message)
    //MARK: Boundaries message words
]

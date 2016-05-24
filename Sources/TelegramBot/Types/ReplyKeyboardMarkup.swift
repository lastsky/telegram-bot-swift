// Telegram Bot SDK for Swift (unofficial).
// (c) 2015 - 2016 Andrey Fidrya. MIT license. See LICENSE for more information.

import Foundation
import SwiftyJSON

/// Represents a custom keyboard with reply options.
public class ReplyKeyboardMarkup {

    /// Array of button rows, each represented by an Array of Strings.
    public var keyboard: [[String]]

    /// *Optional.* Requests clients to resize the keyboard vertically for optimal fit (e.g., make the keyboard smaller if there are just two rows of buttons). Defaults to false, in which case the custom keyboard is always of the same height as the app's standard keyboard.
    public var resize_keyboard: Bool?
    
    /// Optional. Requests clients to hide the keyboard as soon as it's been used. Defaults to false.
    public var one_time_keyboard: Bool?
    
    /// Optional. Use this parameter if you want to show the keyboard to specific users only. Targets: 1) users that are @mentioned in the text of the Message object; 2) if the bot's message is a reply (has reply_to_message_id), sender of the original message.
    public var selective: Bool?
    
    /// Create an empty instance.
    public init() {
        keyboard = [[]]
    }
    
    public var prettyPrint: String {
        return debugDescription
    }
}

extension ReplyKeyboardMarkup: CustomStringConvertible {
    public var description: String {
        var json = JSON([:])
        
        var keyboardJSON = JSON([])
        for row in keyboard {
            let rowJSON = JSON(row)
            // SwiftyJSON's array has no append
            keyboardJSON = JSON(keyboardJSON.arrayObject! + [rowJSON.arrayObject!])
        }
        json["keyboard"] = keyboardJSON
        
        if let resize_keyboard = resize_keyboard {
            json["resize_keyboard"].boolValue = resize_keyboard
        }
        if let one_time_keyboard = one_time_keyboard {
            json["one_time_keyboard"].boolValue = one_time_keyboard
        }
        if let selective = selective {
            json["selective"].boolValue = selective
        }
        return json.rawString(encoding: NSUTF8StringEncoding, options: []) ?? ""
    }
}

extension ReplyKeyboardMarkup: CustomDebugStringConvertible {
    // MARK: CustomDebugStringConvertible
    public var debugDescription: String {
        return "ReplyKeyboardMarkup(keyboard: \(keyboard), resizeKeyboard: \(resize_keyboard.unwrapOptional), " +
            "oneTimeKeyboard: \(one_time_keyboard.unwrapOptional), selective: \(selective.unwrapOptional))"
    }
}
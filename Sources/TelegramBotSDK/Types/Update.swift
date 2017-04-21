// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import SwiftyJSON

/// This object represents an incoming update.
/// At most one of the optional parameters can be present in any given update.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#update>

public struct Update: JsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: JSON

    /// The update‘s unique identifier. Update identifiers start from a certain positive number and increase sequentially. This ID becomes especially handy if you’re using Webhooks, since it allows you to ignore repeated updates or to restore the correct update sequence, should they get out of order.
    public var update_id: Int {
        get { return json["update_id"].intValue }
        set { json["update_id"].intValue = newValue }
    }

    /// Optional. New incoming message of any kind — text, photo, sticker, etc.
    public var message: Message? {
        get {
            let value = json["message"]
            return value.isNullOrUnknown ? nil : Message(json: value)
        }
        set {
            json["message"] = newValue?.json ?? JSON.null
        }
    }

    /// Optional. New version of a message that is known to the bot and was edited
    public var edited_message: Message? {
        get {
            let value = json["edited_message"]
            return value.isNullOrUnknown ? nil : Message(json: value)
        }
        set {
            json["edited_message"] = newValue?.json ?? JSON.null
        }
    }

    /// Optional. New incoming channel post of any kind — text, photo, sticker, etc.
    public var channel_post: Message? {
        get {
            let value = json["channel_post"]
            return value.isNullOrUnknown ? nil : Message(json: value)
        }
        set {
            json["channel_post"] = newValue?.json ?? JSON.null
        }
    }

    /// Optional. New version of a channel post that is known to the bot and was edited
    public var edited_channel_post: Message? {
        get {
            let value = json["edited_channel_post"]
            return value.isNullOrUnknown ? nil : Message(json: value)
        }
        set {
            json["edited_channel_post"] = newValue?.json ?? JSON.null
        }
    }

    /// Optional. New incoming inline query
    public var inline_query: InlineQuery? {
        get {
            let value = json["inline_query"]
            return value.isNullOrUnknown ? nil : InlineQuery(json: value)
        }
        set {
            json["inline_query"] = newValue?.json ?? JSON.null
        }
    }

    /// Optional. The result of an inline query that was chosen by a user and sent to their chat partner.
    public var chosen_inline_result: ChosenInlineResult? {
        get {
            let value = json["chosen_inline_result"]
            return value.isNullOrUnknown ? nil : ChosenInlineResult(json: value)
        }
        set {
            json["chosen_inline_result"] = newValue?.json ?? JSON.null
        }
    }

    /// Optional. New incoming callback query
    public var callback_query: CallbackQuery? {
        get {
            let value = json["callback_query"]
            return value.isNullOrUnknown ? nil : CallbackQuery(json: value)
        }
        set {
            json["callback_query"] = newValue?.json ?? JSON.null
        }
    }

    public init(json: JSON = [:]) {
        self.json = json
    }
}
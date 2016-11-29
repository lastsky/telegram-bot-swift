// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation

public extension TelegramBot {
    typealias EditMessageReplyMarkupCompletion = (_ result: Message?, _ error: DataTaskError?) -> ()

    /// Use this method to edit only the reply markup of messages sent by the bot or via the bot (for inline bots).  On success, if edited message is sent by the bot, the edited Message is returned, otherwise True is returned.
    /// - Parameters:
    ///     - chat_id: Required if inline_message_id is not specified. Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    ///     - message_id: Required if inline_message_id is not specified. Identifier of the sent message
    ///     - inline_message_id: Required if chat_id and message_id are not specified. Identifier of the inline message
    ///     - reply_markup: A JSON-serialized object for an inline keyboard.
    /// - Returns: Message on success. Nil on error, in which case `TelegramBot.lastError` contains the details.
    /// - Note: Blocking version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#editmessagereplymarkup>
    @discardableResult
    public func editMessageReplyMarkupSync(
            chat_id: ChatId? = nil,
            message_id: Int? = nil,
            inline_message_id: String? = nil,
            reply_markup: InlineKeyboardMarkup? = nil,
            _ parameters: [String: Any?] = [:]) -> Message? {
        return requestSync("editMessageReplyMarkup", defaultParameters["editMessageReplyMarkup"], parameters, [
            "chat_id": chat_id,
            "message_id": message_id,
            "inline_message_id": inline_message_id,
            "reply_markup": reply_markup])
    }

    /// Use this method to edit only the reply markup of messages sent by the bot or via the bot (for inline bots).  On success, if edited message is sent by the bot, the edited Message is returned, otherwise True is returned.
    /// - Parameters:
    ///     - chat_id: Required if inline_message_id is not specified. Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    ///     - message_id: Required if inline_message_id is not specified. Identifier of the sent message
    ///     - inline_message_id: Required if chat_id and message_id are not specified. Identifier of the inline message
    ///     - reply_markup: A JSON-serialized object for an inline keyboard.
    /// - Returns: Message on success. Nil on error, in which case `error` contains the details.
    /// - Note: Asynchronous version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#editmessagereplymarkup>
    public func editMessageReplyMarkupAsync(
            chat_id: ChatId? = nil,
            message_id: Int? = nil,
            inline_message_id: String? = nil,
            reply_markup: InlineKeyboardMarkup? = nil,
            _ parameters: [String: Any?] = [:],
            queue: DispatchQueue = .main,
            completion: EditMessageReplyMarkupCompletion? = nil) {
        return requestAsync("editMessageReplyMarkup", defaultParameters["editMessageReplyMarkup"], parameters, [
            "chat_id": chat_id,
            "message_id": message_id,
            "inline_message_id": inline_message_id,
            "reply_markup": reply_markup],
            queue: queue, completion: completion)
    }
}

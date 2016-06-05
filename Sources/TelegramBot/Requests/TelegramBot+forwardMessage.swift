// Telegram Bot SDK for Swift (unofficial).
// (c) 2015 - 2016 Andrey Fidrya. MIT license. See LICENSE for more information.

import Foundation

public extension TelegramBot {
	typealias ForwardMessageCompletion = (result: Message?, error: DataTaskError?)->()
	
	/// Forward messages of any kind. Blocking version.
	/// - Returns: Sent message on success. Nil on error, in which case `lastError` contains the details.
	/// - SeeAlso: <https://core.telegram.org/bots/api#forwardmessage>
	public func forwardMessageSync(chat_id: Int64, from_chat_id: Int64, message_id: Int,
	                            parameters: [String: Any?] = [:]) -> Message? {
		let allParameters: [String: Any?] =
			defaultParameters["forwardMessage"] ?? [:] + parameters +
				["chat_id": chat_id, "from_chat_id": from_chat_id, "message_id": message_id]
		return requestSync("forwardMessage", allParameters)
	}
	
	/// Forward messages of any kind. Asynchronous version.
	/// - Returns: Sent message on success. Nil on error, in which case `error` contains the details.
	/// - SeeAlso: <https://core.telegram.org/bots/api#forwardmessage>
	public func forwardMessageAsync(chat_id: Int64, from_chat_id: Int64, message_id: Int,
	                             parameters: [String: Any?] = [:],
	                             queue: dispatch_queue_t = dispatch_get_main_queue(),
	                             completion: SendMessageCompletion? = nil) {
		let allParameters: [String: Any?] =
			defaultParameters["sendMessage"] ?? [:] + parameters +
				["chat_id": chat_id, "from_chat_id": from_chat_id, "message_id": message_id]
		requestAsync("forwardMessage", allParameters, queue: queue, completion: completion)
	}
}

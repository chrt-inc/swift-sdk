import Foundation

extension Requests {
    public struct UserNotificationPreferencesUpdateRequest: Codable, Hashable, Sendable {
        public let setEventsByChannel: [String: [NotificationEventsForUsersEnum]?]?
        public let addEventsByChannel: [String: [NotificationEventsForUsersEnum]?]?
        public let removeEventsByChannel: [String: [NotificationEventsForUsersEnum]?]?
        public let optInToAllOnChannels: [NotificationChannelsEnum]?
        public let optOutOfAllOnChannels: [NotificationChannelsEnum]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            setEventsByChannel: [String: [NotificationEventsForUsersEnum]?]? = nil,
            addEventsByChannel: [String: [NotificationEventsForUsersEnum]?]? = nil,
            removeEventsByChannel: [String: [NotificationEventsForUsersEnum]?]? = nil,
            optInToAllOnChannels: [NotificationChannelsEnum]? = nil,
            optOutOfAllOnChannels: [NotificationChannelsEnum]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.setEventsByChannel = setEventsByChannel
            self.addEventsByChannel = addEventsByChannel
            self.removeEventsByChannel = removeEventsByChannel
            self.optInToAllOnChannels = optInToAllOnChannels
            self.optOutOfAllOnChannels = optOutOfAllOnChannels
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.setEventsByChannel = try container.decodeIfPresent([String: [NotificationEventsForUsersEnum]?].self, forKey: .setEventsByChannel)
            self.addEventsByChannel = try container.decodeIfPresent([String: [NotificationEventsForUsersEnum]?].self, forKey: .addEventsByChannel)
            self.removeEventsByChannel = try container.decodeIfPresent([String: [NotificationEventsForUsersEnum]?].self, forKey: .removeEventsByChannel)
            self.optInToAllOnChannels = try container.decodeIfPresent([NotificationChannelsEnum].self, forKey: .optInToAllOnChannels)
            self.optOutOfAllOnChannels = try container.decodeIfPresent([NotificationChannelsEnum].self, forKey: .optOutOfAllOnChannels)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.setEventsByChannel, forKey: .setEventsByChannel)
            try container.encodeIfPresent(self.addEventsByChannel, forKey: .addEventsByChannel)
            try container.encodeIfPresent(self.removeEventsByChannel, forKey: .removeEventsByChannel)
            try container.encodeIfPresent(self.optInToAllOnChannels, forKey: .optInToAllOnChannels)
            try container.encodeIfPresent(self.optOutOfAllOnChannels, forKey: .optOutOfAllOnChannels)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case setEventsByChannel = "set_events_by_channel"
            case addEventsByChannel = "add_events_by_channel"
            case removeEventsByChannel = "remove_events_by_channel"
            case optInToAllOnChannels = "opt_in_to_all_on_channels"
            case optOutOfAllOnChannels = "opt_out_of_all_on_channels"
        }
    }
}
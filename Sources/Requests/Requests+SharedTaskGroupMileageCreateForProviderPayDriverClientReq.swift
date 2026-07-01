import Foundation

extension Requests {
    public struct SharedTaskGroupMileageCreateForProviderPayDriverClientReq: Codable, Hashable, Sendable {
        public let endLocation: LocationFeature?
        public let endLocationLabel: String?
        public let orderGroupId: String
        public let paymentDestinationDriverId: String
        public let rateSheetId: String
        public let startLocation: LocationFeature?
        public let startLocationLabel: String?
        public let taskIds: [String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            endLocation: LocationFeature? = nil,
            endLocationLabel: String? = nil,
            orderGroupId: String,
            paymentDestinationDriverId: String,
            rateSheetId: String,
            startLocation: LocationFeature? = nil,
            startLocationLabel: String? = nil,
            taskIds: [String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.endLocation = endLocation
            self.endLocationLabel = endLocationLabel
            self.orderGroupId = orderGroupId
            self.paymentDestinationDriverId = paymentDestinationDriverId
            self.rateSheetId = rateSheetId
            self.startLocation = startLocation
            self.startLocationLabel = startLocationLabel
            self.taskIds = taskIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.endLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .endLocation)
            self.endLocationLabel = try container.decodeIfPresent(String.self, forKey: .endLocationLabel)
            self.orderGroupId = try container.decode(String.self, forKey: .orderGroupId)
            self.paymentDestinationDriverId = try container.decode(String.self, forKey: .paymentDestinationDriverId)
            self.rateSheetId = try container.decode(String.self, forKey: .rateSheetId)
            self.startLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .startLocation)
            self.startLocationLabel = try container.decodeIfPresent(String.self, forKey: .startLocationLabel)
            self.taskIds = try container.decode([String].self, forKey: .taskIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.endLocation, forKey: .endLocation)
            try container.encodeIfPresent(self.endLocationLabel, forKey: .endLocationLabel)
            try container.encode(self.orderGroupId, forKey: .orderGroupId)
            try container.encode(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
            try container.encode(self.rateSheetId, forKey: .rateSheetId)
            try container.encodeIfPresent(self.startLocation, forKey: .startLocation)
            try container.encodeIfPresent(self.startLocationLabel, forKey: .startLocationLabel)
            try container.encode(self.taskIds, forKey: .taskIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case endLocation = "end_location"
            case endLocationLabel = "end_location_label"
            case orderGroupId = "order_group_id"
            case paymentDestinationDriverId = "payment_destination_driver_id"
            case rateSheetId = "rate_sheet_id"
            case startLocation = "start_location"
            case startLocationLabel = "start_location_label"
            case taskIds = "task_ids"
        }
    }
}
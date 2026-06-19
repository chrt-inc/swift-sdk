import Foundation

extension Requests {
    public struct LineItemGroupSharedTaskGroupMileageCreateClientReq: Codable, Hashable, Sendable {
        public let orderGroupId: String
        public let rateSheetId: String
        public let paymentDestinationDriverId: String
        public let taskIds: [String]
        public let startLocation: LocationFeature?
        public let startLocationLabel: String?
        public let endLocation: LocationFeature?
        public let endLocationLabel: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderGroupId: String,
            rateSheetId: String,
            paymentDestinationDriverId: String,
            taskIds: [String],
            startLocation: LocationFeature? = nil,
            startLocationLabel: String? = nil,
            endLocation: LocationFeature? = nil,
            endLocationLabel: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderGroupId = orderGroupId
            self.rateSheetId = rateSheetId
            self.paymentDestinationDriverId = paymentDestinationDriverId
            self.taskIds = taskIds
            self.startLocation = startLocation
            self.startLocationLabel = startLocationLabel
            self.endLocation = endLocation
            self.endLocationLabel = endLocationLabel
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderGroupId = try container.decode(String.self, forKey: .orderGroupId)
            self.rateSheetId = try container.decode(String.self, forKey: .rateSheetId)
            self.paymentDestinationDriverId = try container.decode(String.self, forKey: .paymentDestinationDriverId)
            self.taskIds = try container.decode([String].self, forKey: .taskIds)
            self.startLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .startLocation)
            self.startLocationLabel = try container.decodeIfPresent(String.self, forKey: .startLocationLabel)
            self.endLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .endLocation)
            self.endLocationLabel = try container.decodeIfPresent(String.self, forKey: .endLocationLabel)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.orderGroupId, forKey: .orderGroupId)
            try container.encode(self.rateSheetId, forKey: .rateSheetId)
            try container.encode(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
            try container.encode(self.taskIds, forKey: .taskIds)
            try container.encodeIfPresent(self.startLocation, forKey: .startLocation)
            try container.encodeIfPresent(self.startLocationLabel, forKey: .startLocationLabel)
            try container.encodeIfPresent(self.endLocation, forKey: .endLocation)
            try container.encodeIfPresent(self.endLocationLabel, forKey: .endLocationLabel)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderGroupId = "order_group_id"
            case rateSheetId = "rate_sheet_id"
            case paymentDestinationDriverId = "payment_destination_driver_id"
            case taskIds = "task_ids"
            case startLocation = "start_location"
            case startLocationLabel = "start_location_label"
            case endLocation = "end_location"
            case endLocationLabel = "end_location_label"
        }
    }
}
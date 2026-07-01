import Foundation

public struct WebcargoBookingRate: Codable, Hashable, Sendable {
    public let commodityClassification: [WebcargoCommodityClass]?
    public let connection: WebcargoConnection?
    public let destinationLocation: WebcargoLocation?
    public let hash: String?
    public let latestAcceptanceDate: String?
    public let load: WebcargoLoad?
    public let originLocation: WebcargoLocation?
    public let priceIndicator: WebcargoPriceIndicator?
    public let product: WebcargoProduct?
    public let referenceId: String?
    public let shipmentPriorityCode: String?
    public let specialHandlingCodes: [String]?
    public let timeOfAvailability: String?
    public let transportMode: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        commodityClassification: [WebcargoCommodityClass]? = nil,
        connection: WebcargoConnection? = nil,
        destinationLocation: WebcargoLocation? = nil,
        hash: String? = nil,
        latestAcceptanceDate: String? = nil,
        load: WebcargoLoad? = nil,
        originLocation: WebcargoLocation? = nil,
        priceIndicator: WebcargoPriceIndicator? = nil,
        product: WebcargoProduct? = nil,
        referenceId: String? = nil,
        shipmentPriorityCode: String? = nil,
        specialHandlingCodes: [String]? = nil,
        timeOfAvailability: String? = nil,
        transportMode: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.commodityClassification = commodityClassification
        self.connection = connection
        self.destinationLocation = destinationLocation
        self.hash = hash
        self.latestAcceptanceDate = latestAcceptanceDate
        self.load = load
        self.originLocation = originLocation
        self.priceIndicator = priceIndicator
        self.product = product
        self.referenceId = referenceId
        self.shipmentPriorityCode = shipmentPriorityCode
        self.specialHandlingCodes = specialHandlingCodes
        self.timeOfAvailability = timeOfAvailability
        self.transportMode = transportMode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.commodityClassification = try container.decodeIfPresent([WebcargoCommodityClass].self, forKey: .commodityClassification)
        self.connection = try container.decodeIfPresent(WebcargoConnection.self, forKey: .connection)
        self.destinationLocation = try container.decodeIfPresent(WebcargoLocation.self, forKey: .destinationLocation)
        self.hash = try container.decodeIfPresent(String.self, forKey: .hash)
        self.latestAcceptanceDate = try container.decodeIfPresent(String.self, forKey: .latestAcceptanceDate)
        self.load = try container.decodeIfPresent(WebcargoLoad.self, forKey: .load)
        self.originLocation = try container.decodeIfPresent(WebcargoLocation.self, forKey: .originLocation)
        self.priceIndicator = try container.decodeIfPresent(WebcargoPriceIndicator.self, forKey: .priceIndicator)
        self.product = try container.decodeIfPresent(WebcargoProduct.self, forKey: .product)
        self.referenceId = try container.decodeIfPresent(String.self, forKey: .referenceId)
        self.shipmentPriorityCode = try container.decodeIfPresent(String.self, forKey: .shipmentPriorityCode)
        self.specialHandlingCodes = try container.decodeIfPresent([String].self, forKey: .specialHandlingCodes)
        self.timeOfAvailability = try container.decodeIfPresent(String.self, forKey: .timeOfAvailability)
        self.transportMode = try container.decodeIfPresent(String.self, forKey: .transportMode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.commodityClassification, forKey: .commodityClassification)
        try container.encodeIfPresent(self.connection, forKey: .connection)
        try container.encodeIfPresent(self.destinationLocation, forKey: .destinationLocation)
        try container.encodeIfPresent(self.hash, forKey: .hash)
        try container.encodeIfPresent(self.latestAcceptanceDate, forKey: .latestAcceptanceDate)
        try container.encodeIfPresent(self.load, forKey: .load)
        try container.encodeIfPresent(self.originLocation, forKey: .originLocation)
        try container.encodeIfPresent(self.priceIndicator, forKey: .priceIndicator)
        try container.encodeIfPresent(self.product, forKey: .product)
        try container.encodeIfPresent(self.referenceId, forKey: .referenceId)
        try container.encodeIfPresent(self.shipmentPriorityCode, forKey: .shipmentPriorityCode)
        try container.encodeIfPresent(self.specialHandlingCodes, forKey: .specialHandlingCodes)
        try container.encodeIfPresent(self.timeOfAvailability, forKey: .timeOfAvailability)
        try container.encodeIfPresent(self.transportMode, forKey: .transportMode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case commodityClassification = "commodity_classification"
        case connection
        case destinationLocation = "destination_location"
        case hash
        case latestAcceptanceDate = "latest_acceptance_date"
        case load
        case originLocation = "origin_location"
        case priceIndicator = "price_indicator"
        case product
        case referenceId = "reference_id"
        case shipmentPriorityCode = "shipment_priority_code"
        case specialHandlingCodes = "special_handling_codes"
        case timeOfAvailability = "time_of_availability"
        case transportMode = "transport_mode"
    }
}
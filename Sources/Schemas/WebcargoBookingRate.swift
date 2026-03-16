import Foundation

public struct WebcargoBookingRate: Codable, Hashable, Sendable {
    public let referenceId: String?
    public let shipmentPriorityCode: String?
    public let product: WebcargoProduct?
    public let transportMode: String?
    public let originLocation: WebcargoLocation?
    public let destinationLocation: WebcargoLocation?
    public let connection: WebcargoConnection?
    public let load: WebcargoLoad?
    public let timeOfAvailability: String?
    public let latestAcceptanceDate: String?
    public let priceIndicator: WebcargoPriceIndicator?
    public let specialHandlingCodes: [String]?
    public let commodityClassification: [WebcargoCommodityClass]?
    public let hash: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        referenceId: String? = nil,
        shipmentPriorityCode: String? = nil,
        product: WebcargoProduct? = nil,
        transportMode: String? = nil,
        originLocation: WebcargoLocation? = nil,
        destinationLocation: WebcargoLocation? = nil,
        connection: WebcargoConnection? = nil,
        load: WebcargoLoad? = nil,
        timeOfAvailability: String? = nil,
        latestAcceptanceDate: String? = nil,
        priceIndicator: WebcargoPriceIndicator? = nil,
        specialHandlingCodes: [String]? = nil,
        commodityClassification: [WebcargoCommodityClass]? = nil,
        hash: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.referenceId = referenceId
        self.shipmentPriorityCode = shipmentPriorityCode
        self.product = product
        self.transportMode = transportMode
        self.originLocation = originLocation
        self.destinationLocation = destinationLocation
        self.connection = connection
        self.load = load
        self.timeOfAvailability = timeOfAvailability
        self.latestAcceptanceDate = latestAcceptanceDate
        self.priceIndicator = priceIndicator
        self.specialHandlingCodes = specialHandlingCodes
        self.commodityClassification = commodityClassification
        self.hash = hash
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.referenceId = try container.decodeIfPresent(String.self, forKey: .referenceId)
        self.shipmentPriorityCode = try container.decodeIfPresent(String.self, forKey: .shipmentPriorityCode)
        self.product = try container.decodeIfPresent(WebcargoProduct.self, forKey: .product)
        self.transportMode = try container.decodeIfPresent(String.self, forKey: .transportMode)
        self.originLocation = try container.decodeIfPresent(WebcargoLocation.self, forKey: .originLocation)
        self.destinationLocation = try container.decodeIfPresent(WebcargoLocation.self, forKey: .destinationLocation)
        self.connection = try container.decodeIfPresent(WebcargoConnection.self, forKey: .connection)
        self.load = try container.decodeIfPresent(WebcargoLoad.self, forKey: .load)
        self.timeOfAvailability = try container.decodeIfPresent(String.self, forKey: .timeOfAvailability)
        self.latestAcceptanceDate = try container.decodeIfPresent(String.self, forKey: .latestAcceptanceDate)
        self.priceIndicator = try container.decodeIfPresent(WebcargoPriceIndicator.self, forKey: .priceIndicator)
        self.specialHandlingCodes = try container.decodeIfPresent([String].self, forKey: .specialHandlingCodes)
        self.commodityClassification = try container.decodeIfPresent([WebcargoCommodityClass].self, forKey: .commodityClassification)
        self.hash = try container.decodeIfPresent(String.self, forKey: .hash)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.referenceId, forKey: .referenceId)
        try container.encodeIfPresent(self.shipmentPriorityCode, forKey: .shipmentPriorityCode)
        try container.encodeIfPresent(self.product, forKey: .product)
        try container.encodeIfPresent(self.transportMode, forKey: .transportMode)
        try container.encodeIfPresent(self.originLocation, forKey: .originLocation)
        try container.encodeIfPresent(self.destinationLocation, forKey: .destinationLocation)
        try container.encodeIfPresent(self.connection, forKey: .connection)
        try container.encodeIfPresent(self.load, forKey: .load)
        try container.encodeIfPresent(self.timeOfAvailability, forKey: .timeOfAvailability)
        try container.encodeIfPresent(self.latestAcceptanceDate, forKey: .latestAcceptanceDate)
        try container.encodeIfPresent(self.priceIndicator, forKey: .priceIndicator)
        try container.encodeIfPresent(self.specialHandlingCodes, forKey: .specialHandlingCodes)
        try container.encodeIfPresent(self.commodityClassification, forKey: .commodityClassification)
        try container.encodeIfPresent(self.hash, forKey: .hash)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case referenceId = "reference_id"
        case shipmentPriorityCode = "shipment_priority_code"
        case product
        case transportMode = "transport_mode"
        case originLocation = "origin_location"
        case destinationLocation = "destination_location"
        case connection
        case load
        case timeOfAvailability = "time_of_availability"
        case latestAcceptanceDate = "latest_acceptance_date"
        case priceIndicator = "price_indicator"
        case specialHandlingCodes = "special_handling_codes"
        case commodityClassification = "commodity_classification"
        case hash
    }
}
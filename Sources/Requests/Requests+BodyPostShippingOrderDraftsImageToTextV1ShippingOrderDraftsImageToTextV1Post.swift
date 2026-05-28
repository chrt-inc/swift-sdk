import Foundation

extension Requests {
    public struct BodyPostShippingOrderDraftsImageToTextV1ShippingOrderDraftsImageToTextV1Post {
        public let file: FormFile

        public init(
            file: FormFile
        ) {
            self.file = file
        }
    }
}

extension Requests.BodyPostShippingOrderDraftsImageToTextV1ShippingOrderDraftsImageToTextV1Post: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .file(file, fieldName: "file")
        ]
    }
}
import Foundation

extension Requests {
    public struct BodyPostAddS3ObjectV1OortTaskGroupsAddS3ObjectV1TaskGroupIdPost {
        public let image: FormFile

        public init(
            image: FormFile
        ) {
            self.image = image
        }
    }
}

extension Requests.BodyPostAddS3ObjectV1OortTaskGroupsAddS3ObjectV1TaskGroupIdPost: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .file(image, fieldName: "image")
        ]
    }
}
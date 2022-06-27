// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI
@_exported import enum ApolloAPI.GraphQLEnum
@_exported import enum ApolloAPI.GraphQLNullable

public class CreateReviewWithNullFieldMutation: GraphQLMutation {
  public static let operationName: String = "CreateReviewWithNullField"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      mutation CreateReviewWithNullField {
        createReview(episode: JEDI, review: {stars: 10, commentary: null}) {
          __typename
          stars
          commentary
        }
      }
      """
    ))

  public init() {}

  public struct Data: StarWarsAPI.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { .Object(StarWarsAPI.Mutation.self) }
    public static var selections: [Selection] { [
      .field("createReview", CreateReview?.self, arguments: [
        "episode": "JEDI",
        "review": [
          "stars": 10,
          "commentary": .null
        ]
      ]),
    ] }

    public var createReview: CreateReview? { __data["createReview"] }

    /// CreateReview
    public struct CreateReview: StarWarsAPI.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { .Object(StarWarsAPI.Review.self) }
      public static var selections: [Selection] { [
        .field("stars", Int.self),
        .field("commentary", String?.self),
      ] }

      public var stars: Int { __data["stars"] }
      public var commentary: String? { __data["commentary"] }
    }
  }
}
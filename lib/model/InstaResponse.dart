// To parse this JSON data, do
//
//     final instaResponse = instaResponseFromMap(jsonString?);

import 'dart:convert';

InstaResponse instaResponseFromMap(String? str) =>
    InstaResponse.fromMap(json.decode(str!));

String? instaResponseToMap(InstaResponse data) => json.encode(data.toMap());

class InstaResponse {
  InstaResponse({
    required this.seoCategoryInfos,
    required this.loggingPageId,
    required this.showSuggestedProfiles,
    required this.showFollowDialog,
    required this.graphql,
    required this.toastContentOnLoad,
    required this.showViewShop,
    required this.profilePicEditSyncProps,
    required this.alwaysShowMessageButtonToProAccount,
  });

  final List<List<String?>> seoCategoryInfos;
  final String? loggingPageId;
  final bool? showSuggestedProfiles;
  final bool? showFollowDialog;
  final Graphql graphql;
  final dynamic toastContentOnLoad;
  final bool? showViewShop;
  final dynamic profilePicEditSyncProps;
  final bool? alwaysShowMessageButtonToProAccount;

  factory InstaResponse.fromMap(Map<String?, dynamic> json) => InstaResponse(
        seoCategoryInfos: List<List<String?>>.from(json["seo_category_infos"]
            .map((x) => List<String?>.from(x.map((x) => x)))),
        loggingPageId: json["logging_page_id"],
        showSuggestedProfiles: json["show_suggested_profiles"],
        showFollowDialog: json["show_follow_dialog"],
        graphql: Graphql.fromMap(json["graphql"]),
        toastContentOnLoad: json["toast_content_on_load"],
        showViewShop: json["show_view_shop"],
        profilePicEditSyncProps: json["profile_pic_edit_sync_props"],
        alwaysShowMessageButtonToProAccount:
            json["always_show_message_button_to_pro_account"],
      );

  Map<String?, dynamic> toMap() => {
        "seo_category_infos": List<dynamic>.from(
            seoCategoryInfos.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "logging_page_id": loggingPageId,
        "show_suggested_profiles": showSuggestedProfiles,
        "show_follow_dialog": showFollowDialog,
        "graphql": graphql.toMap(),
        "toast_content_on_load": toastContentOnLoad,
        "show_view_shop": showViewShop,
        "profile_pic_edit_sync_props": profilePicEditSyncProps,
        "always_show_message_button_to_pro_account":
            alwaysShowMessageButtonToProAccount,
      };
}

class Graphql {
  Graphql({
    required this.user,
  });

  final User user;

  factory Graphql.fromMap(Map<String?, dynamic> json) => Graphql(
        user: User.fromMap(json["user"]),
      );

  Map<String?, dynamic> toMap() => {
        "user": user.toMap(),
      };
}

class User {
  User({
    required this.biography,
    required this.blockedByViewer,
    required this.restrictedByViewer,
    required this.countryBlock,
    required this.externalUrl,
    required this.externalUrlLinkshimmed,
    required this.edgeFollowedBy,
    required this.fbid,
    required this.followedByViewer,
    required this.edgeFollow,
    required this.followsViewer,
    required this.fullName,
    required this.hasArEffects,
    required this.hasClips,
    required this.hasGuides,
    required this.hasChannel,
    required this.hasBlockedViewer,
    required this.highlightReelCount,
    required this.hasRequestedViewer,
    required this.hideLikeAndViewCounts,
    required this.id,
    required this.isBusinessAccount,
    required this.isProfessionalAccount,
    required this.isJoinedRecently,
    required this.businessAddressJson,
    required this.businessContactMethod,
    required this.businessEmail,
    required this.businessPhoneNumber,
    required this.businessCategoryName,
    required this.overallCategoryName,
    required this.categoryEnum,
    required this.categoryName,
    required this.isPrivate,
    required this.isVerified,
    required this.edgeMutualFollowedBy,
    required this.profilePicUrl,
    required this.profilePicUrlHd,
    required this.requestedByViewer,
    required this.shouldShowCategory,
    required this.shouldShowPublicContacts,
    required this.username,
    required this.connectedFbPage,
    required this.pronouns,
    required this.edgeFelixVideoTimeline,
    required this.edgeOwnerToTimelineMedia,
    required this.edgeSavedMedia,
    required this.edgeMediaCollections,
    required this.edgeRelatedProfiles,
  });

  final String? biography;
  final bool? blockedByViewer;
  final dynamic restrictedByViewer;
  final bool? countryBlock;
  final String? externalUrl;
  final String? externalUrlLinkshimmed;
  final EdgeFollow edgeFollowedBy;
  final String? fbid;
  final bool? followedByViewer;
  final EdgeFollow edgeFollow;
  final bool? followsViewer;
  final String? fullName;
  final bool? hasArEffects;
  final bool? hasClips;
  final bool? hasGuides;
  final bool? hasChannel;
  final bool? hasBlockedViewer;
  final int? highlightReelCount;
  final bool? hasRequestedViewer;
  final bool? hideLikeAndViewCounts;
  final String? id;
  final bool? isBusinessAccount;
  final bool? isProfessionalAccount;
  final bool? isJoinedRecently;
  final dynamic businessAddressJson;
  final dynamic businessContactMethod;
  final dynamic businessEmail;
  final dynamic businessPhoneNumber;
  final dynamic businessCategoryName;
  final dynamic overallCategoryName;
  final dynamic categoryEnum;
  final dynamic categoryName;
  final bool? isPrivate;
  final bool? isVerified;
  final EdgeMutualFollowedBy edgeMutualFollowedBy;
  final String? profilePicUrl;
  final String? profilePicUrlHd;
  final bool? requestedByViewer;
  final bool? shouldShowCategory;
  final bool? shouldShowPublicContacts;
  final String? username;
  final dynamic connectedFbPage;
  final List<dynamic> pronouns;
  final Edge edgeFelixVideoTimeline;
  final Edge edgeOwnerToTimelineMedia;
  final Edge edgeSavedMedia;
  final Edge edgeMediaCollections;
  final EdgeRelatedProfiles edgeRelatedProfiles;

  factory User.fromMap(Map<String?, dynamic> json) => User(
        biography: json["biography"],
        blockedByViewer: json["blocked_by_viewer"],
        restrictedByViewer: json["restricted_by_viewer"],
        countryBlock: json["country_block"],
        externalUrl: json["external_url"],
        externalUrlLinkshimmed: json["external_url_linkshimmed"],
        edgeFollowedBy: EdgeFollow.fromMap(json["edge_followed_by"]),
        fbid: json["fbid"],
        followedByViewer: json["followed_by_viewer"],
        edgeFollow: EdgeFollow.fromMap(json["edge_follow"]),
        followsViewer: json["follows_viewer"],
        fullName: json["full_name"],
        hasArEffects: json["has_ar_effects"],
        hasClips: json["has_clips"],
        hasGuides: json["has_guides"],
        hasChannel: json["has_channel"],
        hasBlockedViewer: json["has_blocked_viewer"],
        highlightReelCount: json["highlight_reel_count"],
        hasRequestedViewer: json["has_requested_viewer"],
        hideLikeAndViewCounts: json["hide_like_and_view_counts"],
        id: json["id"],
        isBusinessAccount: json["is_business_account"],
        isProfessionalAccount: json["is_professional_account"],
        isJoinedRecently: json["is_joined_recently"],
        businessAddressJson: json["business_address_json"],
        businessContactMethod: json["business_contact_method"],
        businessEmail: json["business_email"],
        businessPhoneNumber: json["business_phone_number"],
        businessCategoryName: json["business_category_name"],
        overallCategoryName: json["overall_category_name"],
        categoryEnum: json["category_enum"],
        categoryName: json["category_name"],
        isPrivate: json["is_private"],
        isVerified: json["is_verified"],
        edgeMutualFollowedBy:
            EdgeMutualFollowedBy.fromMap(json["edge_mutual_followed_by"]),
        profilePicUrl: json["profile_pic_url"],
        profilePicUrlHd: json["profile_pic_url_hd"],
        requestedByViewer: json["requested_by_viewer"],
        shouldShowCategory: json["should_show_category"],
        shouldShowPublicContacts: json["should_show_public_contacts"],
        username: json["username"],
        connectedFbPage: json["connected_fb_page"],
        pronouns: List<dynamic>.from(json["pronouns"].map((x) => x)),
        edgeFelixVideoTimeline: Edge.fromMap(json["edge_felix_video_timeline"]),
        edgeOwnerToTimelineMedia:
            Edge.fromMap(json["edge_owner_to_timeline_media"]),
        edgeSavedMedia: Edge.fromMap(json["edge_saved_media"]),
        edgeMediaCollections: Edge.fromMap(json["edge_media_collections"]),
        edgeRelatedProfiles:
            EdgeRelatedProfiles.fromMap(json["edge_related_profiles"]),
      );

  Map<String?, dynamic> toMap() => {
        "biography": biography,
        "blocked_by_viewer": blockedByViewer,
        "restricted_by_viewer": restrictedByViewer,
        "country_block": countryBlock,
        "external_url": externalUrl,
        "external_url_linkshimmed": externalUrlLinkshimmed,
        "edge_followed_by": edgeFollowedBy.toMap(),
        "fbid": fbid,
        "followed_by_viewer": followedByViewer,
        "edge_follow": edgeFollow.toMap(),
        "follows_viewer": followsViewer,
        "full_name": fullName,
        "has_ar_effects": hasArEffects,
        "has_clips": hasClips,
        "has_guides": hasGuides,
        "has_channel": hasChannel,
        "has_blocked_viewer": hasBlockedViewer,
        "highlight_reel_count": highlightReelCount,
        "has_requested_viewer": hasRequestedViewer,
        "hide_like_and_view_counts": hideLikeAndViewCounts,
        "id": id,
        "is_business_account": isBusinessAccount,
        "is_professional_account": isProfessionalAccount,
        "is_joined_recently": isJoinedRecently,
        "business_address_json": businessAddressJson,
        "business_contact_method": businessContactMethod,
        "business_email": businessEmail,
        "business_phone_number": businessPhoneNumber,
        "business_category_name": businessCategoryName,
        "overall_category_name": overallCategoryName,
        "category_enum": categoryEnum,
        "category_name": categoryName,
        "is_private": isPrivate,
        "is_verified": isVerified,
        "edge_mutual_followed_by": edgeMutualFollowedBy.toMap(),
        "profile_pic_url": profilePicUrl,
        "profile_pic_url_hd": profilePicUrlHd,
        "requested_by_viewer": requestedByViewer,
        "should_show_category": shouldShowCategory,
        "should_show_public_contacts": shouldShowPublicContacts,
        "username": username,
        "connected_fb_page": connectedFbPage,
        "pronouns": List<dynamic>.from(pronouns.map((x) => x)),
        "edge_felix_video_timeline": edgeFelixVideoTimeline.toMap(),
        "edge_owner_to_timeline_media": edgeOwnerToTimelineMedia.toMap(),
        "edge_saved_media": edgeSavedMedia.toMap(),
        "edge_media_collections": edgeMediaCollections.toMap(),
        "edge_related_profiles": edgeRelatedProfiles.toMap(),
      };
}

class Edge {
  Edge({
    required this.count,
    required this.pageInfo,
    required this.edges,
  });

  final int? count;
  final PageInfo pageInfo;
  final List<dynamic> edges;

  factory Edge.fromMap(Map<String?, dynamic> json) => Edge(
        count: json["count"],
        pageInfo: PageInfo.fromMap(json["page_info"]),
        edges: List<dynamic>.from(json["edges"].map((x) => x)),
      );

  Map<String?, dynamic> toMap() => {
        "count": count,
        "page_info": pageInfo.toMap(),
        "edges": List<dynamic>.from(edges.map((x) => x)),
      };
}

class PageInfo {
  PageInfo({
    required this.hasNextPage,
    required this.endCursor,
  });

  final bool? hasNextPage;
  final String? endCursor;

  factory PageInfo.fromMap(Map<String?, dynamic> json) => PageInfo(
        hasNextPage: json["has_next_page"],
        endCursor: json["end_cursor"] == null ? null : json["end_cursor"],
      );

  Map<String?, dynamic> toMap() => {
        "has_next_page": hasNextPage,
        "end_cursor": endCursor == null ? null : endCursor,
      };
}

class EdgeFollow {
  EdgeFollow({
    required this.count,
  });

  final int? count;

  factory EdgeFollow.fromMap(Map<String?, dynamic> json) => EdgeFollow(
        count: json["count"],
      );

  Map<String?, dynamic> toMap() => {
        "count": count,
      };
}

class EdgeMutualFollowedBy {
  EdgeMutualFollowedBy({
    required this.count,
    required this.edges,
  });

  final int? count;
  final List<dynamic> edges;

  factory EdgeMutualFollowedBy.fromMap(Map<String?, dynamic> json) =>
      EdgeMutualFollowedBy(
        count: json["count"],
        edges: List<dynamic>.from(json["edges"].map((x) => x)),
      );

  Map<String?, dynamic> toMap() => {
        "count": count,
        "edges": List<dynamic>.from(edges.map((x) => x)),
      };
}

class EdgeRelatedProfiles {
  EdgeRelatedProfiles({
    required this.edges,
  });

  final List<dynamic> edges;

  factory EdgeRelatedProfiles.fromMap(Map<String?, dynamic> json) =>
      EdgeRelatedProfiles(
        edges: List<dynamic>.from(json["edges"].map((x) => x)),
      );

  Map<String?, dynamic> toMap() => {
        "edges": List<dynamic>.from(edges.map((x) => x)),
      };
}

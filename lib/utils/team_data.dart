class MemberData {
  List<Member> members;

  MemberData({this.members});

  MemberData.fromJson(Map<String, dynamic> json) {
    if (json['speakers'] != null) {
      members = new List<Member>();
      json['speakers'].forEach((v) {
        members.add(Member.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.members != null) {
      data['speakers'] = this.members.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Member {
  String speakerName;
  String speakerDesc;
  String speakerImage;
  String speakerInfo;
  String speakerId;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  String instagramUrl;

  Member({
    this.speakerName,
    this.speakerDesc,
    this.speakerImage,
    this.speakerInfo,
    this.speakerId,
    this.fbUrl,
    this.twitterUrl,
    this.linkedinUrl,
    this.githubUrl,
    this.instagramUrl,
  });

  Member.fromJson(Map<String, dynamic> json) {
    speakerName = json['speaker_name'];
    speakerDesc = json['speaker_desc'];
    speakerImage = json['speaker_image'];
    speakerInfo = json['speaker_info'];
    speakerId = json['speaker_id'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
    instagramUrl = json['instagram_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speaker_name'] = this.speakerName;
    data['speaker_desc'] = this.speakerDesc;
    data['speaker_image'] = this.speakerImage;
    data['speaker_info'] = this.speakerInfo;
    data['speaker_id'] = this.speakerId;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    data['github_url'] = this.githubUrl;
    data['instagram_url'] = this.instagramUrl;

    return data;
  }
}

List<Member> speakers = [
  Member(
    speakerImage: "assets/aayush.jpg",
    speakerName: "Aayush Jain",
    speakerDesc: "170800107023",
    fbUrl: "https://www.facebook.com/aayush.jain.9843",
    githubUrl: "https://github.com/Darkshadow9799",
    linkedinUrl: "https://www.linkedin.com/in/aayush-jain-88a674148/",
    twitterUrl: "https://twitter.com/Darkshadow9799",
    instagramUrl: "https://www.instagram.com/mr_aayush_jain/",
  ),
  Member(
    speakerImage: "assets/harsh.jpeg",
    speakerName: "Harsh Lilawala",
    speakerDesc: "170800107034",
    fbUrl: "https://www.facebook.com/harsh.lilawala.3",
    githubUrl: "https://github.com/harshlilawala",
    linkedinUrl: "https://www.linkedin.com/in/harsh-lilawala-a957291b2/",
    twitterUrl: "",
    instagramUrl: "https://www.instagram.com/harsh_i_l/",
  ),
  Member(
    speakerImage: "assets/parth.jpg",
    speakerName: "Parth Mistry",
    speakerDesc: "170800107038",
    fbUrl: "https://www.facebook.com/parth.h.m",
    githubUrl: "https://github.com/m-prth",
    linkedinUrl: "https://www.linkedin.com/in/parth-mistry-652005184/",
    twitterUrl: "https://twitter.com/m_prth",
    instagramUrl: "https://www.instagram.com/m_prth/",
  ),
];

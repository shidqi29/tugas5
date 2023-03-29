class NewsDetail {
  final int id;
  final String title;
  final String content;

  NewsDetail({
    required this.id,
    required this.title,
    required this.content,
  });

  factory NewsDetail.fromMap(Map<String, dynamic> map) {
    return NewsDetail(
      id: map["id"],
      title: map["title"],
      content: map["content"],
    );
  }

  factory NewsDetail.dummy() {
    return NewsDetail(
      id: 1,
      title: "Legenda Situ Bagendit",
      content: "Amet dolore ea ullamco labore et ullamco nisi aliqua ad aliquip. Excepteur eiusmod fugiat ut amet sint aliqua mollit dolor cillum anim fugiat dolore. Mollit aliqua esse est exercitation tempor. Anim quis ipsum esse do consectetur laboris minim fugiat enim fugiat proident irure est. Dolore velit ex quis proident sint anim commodo et cupidatat consequat nulla amet. Aliquip fugiat dolor anim pariatur enim ad sunt dolor eu culpa reprehenderit tempor dolore. Proident consectetur officia in exercitation in.",
    );
  }
}

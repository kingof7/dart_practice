class Document {
  // 내용
  String _content;

  String get content {
    _readCount += 1;
    return _content;
  }

  set content(String value) {
    _updateCount += 1;
    _content = value;
  }

  // 읽은 횟수, _ 언더바는 private 변수라서 외부접근 불가
  final int _readCount = 0;

  // 수정 횟수
  final int _updateCount = 0;

  // 통계, late는 접근하는 순간 초기회 됨.
  //late String statistic = "readCount : $readCount / updateCount : $updateCount";
  // => 는 { return ? } 과 같은 뜻임
  // String get statistic { return "readCount : $readCount / updateCount : $updateCount"; }
  String get statistic =>
      "readCount : $_readCount / updateCount : $_updateCount";
  Document(this._content);
}

class Event {
  Event(this.name,
      {this.sessionId, this.timestamp, this.id, Map<String, dynamic> props}) {
    addProps(props);
  }

  int id;
  String sessionId;
  int timestamp;
  String name;
  Map<String, dynamic> props = <String, dynamic>{};

  void addProps(Map<String, dynamic> props) {
    if (props != null) {
      this.props.addAll(props);
    }
  }

  Map<String, dynamic> toPayload() {
    return <String, dynamic>{
      'event_type': name,
      'session_id': sessionId,
      'timestamp': timestamp
    }..addAll(props);
  }
}

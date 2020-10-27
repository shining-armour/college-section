class EventDetails {
  final String eventName,
      address,
      description,
      eligibility,
      eventType,
      otherDetails,
      timeOfEvent,
      posterUrl,
      dateOfEvent;
  final double lat, long;

  EventDetails(
      {this.eventName,
      this.address,
      this.description,
      this.eligibility,
      this.eventType,
      this.otherDetails,
      this.timeOfEvent,
      this.lat,
      this.long,
      this.posterUrl,
      this.dateOfEvent});
}

class Event {
  final String organiserID, eventId, eventType;
  final double lat, long;

  Event({
    this.organiserID,
    this.lat,
    this.long,
    this.eventId,
    this.eventType,
  });
}

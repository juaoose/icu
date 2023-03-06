class Wellness {
  final String id;
  final num ctl;
  final num atl;
  final num rampRate;
  final num ctlLoad;
  final num atlLoad;

  // This is a date
  final String updated;

  //TODO(juaoose) add missing fields and verify date format

  const Wellness({
    required this.id,
    required this.ctl,
    required this.atl,
    required this.rampRate,
    required this.ctlLoad,
    required this.atlLoad,
    required this.updated,
  });

  factory Wellness.fromJson(Map<String, dynamic> json) {
    return Wellness(
      id: json['id'],
      ctl: json['ctl'],
      atl: json['atl'],
      rampRate: json['rampRate'],
      ctlLoad: json['ctlLoad'],
      atlLoad: json['atlLoad'],
      updated: json['updated'],
    );
  }
}

class Task {
  dynamic _id;
  String _customerId;
  String _customerName;
  String _customerAddress;
  String _phone;
  int _serviceType;
  String _evidanceUrl;
  DateTime _dateCreated;
  DateTime _dateUpdated;
  int _status;
  dynamic _technician;

  get id => _id;
  set id(value) => _id = value;

  get customerId => _customerId;
  set customerId(value) => _customerId = value;

  get customerName => _customerName;
  set customerName(value) => _customerName = value;

  get customerAddress => _customerAddress;
  set customerAddress(value) => _customerAddress = value;

  get phone => _phone;
  set phone(value) => _phone = value;

  get serviceType => _serviceType;
  set serviceType(value) => _serviceType = value;

  get evidanceUrl => _evidanceUrl;
  set evidanceUrl(value) => _evidanceUrl = value;

  get dateCreated => _dateCreated;
  set dateCreated(value) => _dateCreated = value;

  get dateUpdated => _dateUpdated;
  set dateUpdated(value) => _dateUpdated = value;

  get status => _status;
  set status(value) => _status = value;

  get technician => _technician;
  set technician(value) => _technician = value;

  Task({
    dynamic id,
    String customerId,
    String customerName,
    String customerAddress,
    String phone,
    int serviceType,
    String evidanceUrl,
    DateTime dateCreated,
    DateTime dateUpdated,
    int status,
    dynamic technician,
  })  : _id = id,
        _customerId = customerId,
        _customerAddress = customerAddress,
        _customerName = customerName,
        _phone = phone,
        _serviceType = serviceType,
        _evidanceUrl = evidanceUrl,
        _dateCreated = dateCreated,
        _dateUpdated = dateUpdated,
        _status = status,
        _technician = technician;

  Task.fromJson(Map<String, dynamic> json)
      : this(
          id: json["id"],
          customerId: json["customerId"],
          customerName: json["customerName"],
          customerAddress: json["customerAddress"],
          phone: json["phone"],
          serviceType: json["serviceType"],
          evidanceUrl: json["evidanceUrl"],
          dateCreated: DateTime.parse(json["dateCreated"]),
          dateUpdated: DateTime.parse(json["dateUpdated"]),
          status: json["status"],
          technician: json["technician"],
        );

  Map<String, dynamic> toJson() => {
        "id": id,
        "customerId": customerId,
        "customerName": customerName,
        "customerAddress": customerAddress,
        "phone": phone,
        "serviceType": serviceType,
        "evidanceUrl": evidanceUrl,
        "dateCreated": dateCreated.toIso8601String(),
        "dateUpdated": dateUpdated.toIso8601String(),
        "status": status,
        "technician": technician,
      };
}

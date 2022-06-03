// status of a delivery
enum DeliveryStatus { active, scheduled, past }

// role of a user
enum Roles { customer, driver }

Roles rolesFrom(String s) {
  return Roles.values.firstWhere((e) => e.name == s);
}

// for notification types
enum NotificationMessageType { error, info, success }

// buttons
enum IconPosition { centerLeft, centerRight, end, start }

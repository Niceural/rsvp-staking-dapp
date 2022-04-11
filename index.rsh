"reach 0.1";
//'use strict';

const CommonInterface = { hasAttended: Fun([Address, Bool], Null) };

const AdminInterface = {
  ...CommonInterface,
  createEvent: Fun(
    [],
    Object({
      id: UInt,
      description: Bytes(32),
      stakingMin: UInt,
      sellingPeriod: UInt,
    })
  ),
};

const AttendeeInterface = { ...CommonInterface };

export const main = Reach.App(
  {},
  [
    Participant("Admin", AdminInterface),
    ParticipantClass("Attendee", AttendeeInterface),
  ],
  (Admin, Attendee) => {
    const hasAttended = (who) =>
    each([Admin, Attendee], () => {
      interact.hasAttended
    })
    Admin.only(() => {
      const { id, description, stakingMin, sellingPeriod } = declassify(
        interact.createEvent()
      );
    });
    Admin.publish(id, description, stakingMin, sellingPeriod);

    // allow Attendees to purchase tickets until deadline is met
    const []
  }
);

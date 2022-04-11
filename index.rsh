"reach 0.1";
//'use strict';

const CommonInterface = {
  // for attendees to verify attendance
  /*hasAttended: Fun([Address, Bool], Null) */
  // when the amount has been staked and the Attendee is registered to the event
  registered: Fun([], Null),
  // when the attendance has been validated by the Admin and the funds are ready to be unstaked
  attendanceVerified: Fun([], Null),
  // when the funds have been transferred to the Attendee
  unstaked: Fun([UInt], Null),
};

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
    /*const hasAttended = (who) =>
    each([Admin, Attendee], () => {
      interact.hasAttended
    })*/

    Admin.only(() => {
      const { id, description, stakingMin, sellingPeriod } = declassify(
        interact.createEvent()
      );
    });
    Admin.publish(id, description, stakingMin, sellingPeriod);

    // allow Attendees to purchase tickets until deadline is met
    //const []
    commit();
    exit();
  }
);

import { loadStdlib } from "@reach-sh/stdlib";
import * as backend from "./build/index.main.mjs";
const stdlib = loadStdLib();

const numberOfAttendees = 10;
const startingBalance = stdlib.parseCurrency(100);

const accAdmin = await stdlib.newTestAccount(startingBalance);
const accAttendeeArray = await Promise.all(
  Array.from({ length: numberOfAttendees }, () =>
    stdlib.newTestAccount(startingBalance)
  )
);

const ctcAdmin = accAdmin.contract(backend);
const ctcInfo = ctcAdmin.getInfo();

const eventParameters = {
  id: 657,
  description: "This is a test event",
  stakingMin: stdlib.parseCurrency(5),
  sellingPeriod: 5,
};

await Promise.all([
  backend.Admin(ctcAdmin, {
    hasAttended: (addr) => console.log(``),
    createEvent: () => eventParameters,
  }),
]);

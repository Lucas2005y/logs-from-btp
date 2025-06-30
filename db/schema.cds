namespace logs.ecc;

using {
  cuid,
  managed
} from '@sap/cds/common';

entity savedLogs : cuid, managed {
  userId    : String(50) not null;
  app       : String(100) not null;
  timestamp : Timestamp not null;
  message   : String(5000) not null;
}

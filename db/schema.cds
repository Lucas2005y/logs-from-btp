namespace logs.btp;

using {
  cuid,
  managed
} from '@sap/cds/common';

entity savedLogs : cuid, managed {
  application  : String(100);
  message      : String(5000);
}

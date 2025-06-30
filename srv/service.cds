//\logs-from-ecc\srv\service.cds
using { logs.btp as db } from '../db/schema.cds';


//@requires: 'authenticated-user'
service LogService {
  //@odata.draft.enabled
  entity savedLogs as projection on db.savedLogs;

}
//\logs-from-ecc\srv\service.cds
using { logs.ecc as db } from '../db/schema.cds';


//@requires: 'authenticated-user'
service LogService {
  //@odata.draft.enabled
  entity Logs as projection on db.savedLogs;

}
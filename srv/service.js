const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
  const { savedLogs } = this.entities;

  // CREATE
  this.on('CREATE', savedLogs, async (req) => {
    return cds.transaction(req).run(
      INSERT.into(savedLogs).entries(req.data)
    );
  });

  // READ
  this.on('READ', savedLogs, async (req) => {
    return cds.transaction(req).run(req.query);
  });

  // UPDATE
  this.on('UPDATE', savedLogs, async (req) => {
    return cds.transaction(req).run(
      UPDATE(savedLogs)
        .set(req.data)
        .where(req.data.ID ? { ID: req.data.ID } : req.query.UPDATE?.where)
    );
  });

  // DELETE
  this.on('DELETE', savedLogs, async (req) => {
    return cds.transaction(req).run(
      DELETE.from(savedLogs).where(req.data.ID ? { ID: req.data.ID } : req.query.DELETE?.from?.where)
    );
  });
});
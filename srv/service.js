const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
  const { Logs } = this.entities;

  // CREATE
  this.on('CREATE', Logs, async (req) => {
    return cds.transaction(req).run(
      INSERT.into(Logs).entries(req.data)
    );
  });

  // READ
  this.on('READ', Logs, async (req) => {
    return cds.transaction(req).run(req.query);
  });

  // UPDATE
  this.on('UPDATE', Logs, async (req) => {
    return cds.transaction(req).run(
      UPDATE(Logs)
        .set(req.data)
        .where(req.data.ID ? { ID: req.data.ID } : req.query.UPDATE?.where)
    );
  });

  // DELETE
  this.on('DELETE', Logs, async (req) => {
    return cds.transaction(req).run(
      DELETE.from(Logs).where(req.data.ID ? { ID: req.data.ID } : req.query.DELETE?.from?.where)
    );
  });
});
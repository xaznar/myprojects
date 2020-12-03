const valid = (email) => {
  // TODO: return true if the `email` string has the right pattern!
  if (email.match(/^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/)) {
    return true;
  }
  return false;
};

valid('boris.lewagon.org')

module.exports = valid; // Do not remove.

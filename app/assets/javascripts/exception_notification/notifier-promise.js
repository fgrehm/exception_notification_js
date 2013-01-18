//= require promise
window.ExceptionNotification = {
  notify: function(evt) {
    console.log("Caught[via 'error' event]:  '" + evt.message + "' from " + evt.filename + ":" + evt.lineno);
    console.log(evt); // has srcElement / target / etc
    var errorInfo = {
      message:     evt.message,
      file:        evt.filename,
      line_number: evt.lineno
    };
    promise.post('/_js_exceptions', errorInfo);
  }
}

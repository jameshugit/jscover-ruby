#include <ruby.h>
#include <pthread.h>

int jscoverage_highlight;
const char * jscoverage_encoding = "ISO-8859-1";
void jscoverage_init();
const char * jscoverage_instrument_string(const char * script, const char * id);

static VALUE jscover_instrument(VALUE self, VALUE script, VALUE id) {
  return rb_str_new2(jscoverage_instrument_string(RSTRING_PTR(script), RSTRING_PTR(id)));
}

void Init_jscover(void) {
  VALUE mJscover = rb_define_class("JSCover", rb_cObject);
  rb_define_singleton_method(mJscover, "instrument", jscover_instrument, 2);
}

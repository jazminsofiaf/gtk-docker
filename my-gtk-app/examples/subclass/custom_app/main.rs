mod ex_application;

use ex_application::ExApplication;
use gtk4 as gtk;
use gtk::prelude::*;

fn main() {
    let app = ExApplication::new();
    std::process::exit(app.run());
}

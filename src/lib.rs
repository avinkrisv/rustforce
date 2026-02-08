use zed_extension_api as zed;

struct RustforceExtension;

impl zed::Extension for RustforceExtension {
    fn new() -> Self {
        Self
    }
}

zed::register_extension!(RustforceExtension);

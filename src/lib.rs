use zed_extension_api::{self as zed, Command, LanguageServerId, Result, Worktree};

struct RustforceExtension;

impl zed::Extension for RustforceExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        language_server_id: &LanguageServerId,
        _worktree: &Worktree,
    ) -> Result<Command> {
        match language_server_id.as_ref() {
            "apex-lsp" => Ok(Command {
                command: "/Users/avinkrism4pro/.cargo/bin/apex-lsp".to_string(),
                args: vec![],
                env: vec![],
            }),
            _ => Err(format!("Unknown language server: {language_server_id}")),
        }
    }
}

zed::register_extension!(RustforceExtension);

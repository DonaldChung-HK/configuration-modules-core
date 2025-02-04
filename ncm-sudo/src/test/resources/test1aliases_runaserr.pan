# Simple testing profile for sudo component.
# One incorrect alias defined for users_aliases field. Should fail.
object template test1aliases_runaserr;
include pro_declaration_types;
include pro_declaration_component_sudo;
include pro_declaration_functions_sudo;

"/software/components/sudo/privilege_lines" = list(
    dict(
        "user", "ALL",
        "run_as", "ALL",
        "host", "ALL",
        "cmd", "ALL"
    ),
);

"/software/components/sudo/run_as_aliases" = dict(
    "foo", list("bar")
);
"/software/components/sudo/active" = true;
"/software/components/sudo/dispatch" = true;

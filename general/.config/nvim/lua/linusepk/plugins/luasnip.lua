return {
    "L3MON4D3/LuaSnip",
    build = "make install_jsregxp",
    config = function ()
        local ls = require("luasnip");

        local s = ls.snippet
        local i = ls.insert_node
        local t = ls.text_node
        local d = ls.dynamic_node
        local sn = ls.snippet_node
        local f = ls.function_node

        local function endif_fn(
            args,
            parent,
            user_args
            )
            return "#endif // " .. args[1][1]
        end

        local function user_input(
            args,
            parent,
            user_args
            )
            return args[1][1]
        end

        ls.add_snippets("c", {
            s("oc", {
                t("// "),
                i(1)
            }),
            s("mc", {
                t({"//", "// "}),
                i(1),
                t({"", "//"})
            }),
            s("region", {
                t({"/*=========================*/", ""}),
                t("// "), i(1),
                t({"", "/*=========================*/"})
            }),
            s("ifdef", {
                t("#ifdef "), i(1),
                t({"", ""}), i(0),
                t({"", ""}),
                i(""), f(endif_fn, {1}, {})
            }),
            s("ifndef", {
                t("#ifndef "), i(1),
                t({"", ""}), i(0),
                t({"", ""}),
                i(""), f(endif_fn, {1}, {})
            }),
            s("tds", {
                t("typedef struct "), f(user_input, {1}, {}), t(" "), f(user_input, {1}, {}), t(";"),
                t({"", "struct "}), i(1), t(" {"),
                t({"", "    "}), i(0),
                t({"", "};"})
            }),
            s("tdu", {
                t("typedef union "), f(user_input, {1}, {}), t(" "), f(user_input, {1}, {}), t(";"),
                t({"", "union "}), i(1), t(" {"),
                t({"", "    "}), i(0),
                t({"", "};"})
            })
        });
    end
}

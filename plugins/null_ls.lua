local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- Just pick the null-ls builtins I care about
  b.formatting.gofmt,
  b.formatting.deno_fmt,
}

null_ls.setup {
   debug = true,
   sources = sources,
}

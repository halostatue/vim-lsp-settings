augroup vim_lsp_settings_standardrb
  au!

  LspRegisterServer {
      \ 'name': 'standardrb',
      \ 'cmd': {server_info->lsp_settings#get('standardrb', 'cmd', [lsp_settings#exec_path('standardrb')]+lsp_settings#get('standardrb', 'args', ['--lsp']))},
      \ 'root_uri':{server_info->lsp_settings#get('standardrb', 'root_uri', lsp_settings#root_uri('standardrb'))},
      \ 'initialization_options': lsp_settings#get('standardrb', 'initialization_options', {'diagnostics': 'true'}),
      \ 'allowlist': lsp_settings#get('standardrb', 'allowlist', ['ruby']),
      \ 'blocklist': lsp_settings#get('standardrb', 'blocklist', []),
      \ 'config': lsp_settings#get('standardrb', 'config', lsp_settings#server_config('standardrb')),
      \ 'workspace_config': lsp_settings#get('standardrb', 'workspace_config', {}),
      \ 'semantic_highlight': lsp_settings#get('standardrb', 'semantic_highlight', {}),
      \ }
augroup END

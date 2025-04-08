#!/usr/bin/env bash
#
# 'Choose workspace'
# Shows a workspace chooser using fzf
# https://code.visualstudio.com/docs/editing/workspaces/workspaces

cws() {
  local ws_dir="$HOME/workspace/dev"
  local ext=".code-workspace"

  find "$ws_dir" -name "*$ext" -exec basename {} \; | \
    sed -r "s/$ext//" | \
    fzf --height 30% --prompt "Select Workspace > " \
        --preview-window 75% \
        --preview "bat \"$ws_dir/{}.code-workspace\" --style=plain | jq -r '.folders[].path // empty' | sort" | \
    xargs -r -I {} code "$ws_dir/{}$ext"
}

# anybandui.github.io
The Github Pages site for AnybandUI.

The Jekyll site is in `docs`. GitHub Pages' dependencies require Ruby below
4.0; use Ruby 3.3.12 (recorded in `.ruby-version`). Changing the Gemfile alone
does not switch the Ruby used by your terminal.

On this machine, select the local Ruby in Command Prompt from the repository root:

```bat
Use-SiteRuby.cmd
cd docs
bundle install
bundle exec jekyll serve
```

From `docs`, use `..\Use-SiteRuby.cmd`. When calling it from another batch
script, use `call Use-SiteRuby.cmd` so that script continues afterwards.

Open <http://localhost:4000/> for the local preview.
The `AnybandUI/anybandui.github.io` repository is the account site, served at
<https://anybandui.github.io/> with an empty base path. Restart Jekyll after
changing `docs/_config.yml`.

Or, in PowerShell from the repository root:

```powershell
. .\Use-SiteRuby.ps1
cd docs
bundle install
bundle exec jekyll serve
```

Run the selection script again in each new terminal. In PowerShell from `docs`, use
`. ..\Use-SiteRuby.ps1`.

For a fresh checkout on Windows, download the official
[RubyInstaller 3.3.12 x64 archive](https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-3.3.12-1/rubyinstaller-3.3.12-1-x64.7z)
and extract it into `.tools` at the repository root. The script expects
`.tools\rubyinstaller-3.3.12-1-x64\bin\ruby.exe`. Native gems also require the
RubyInstaller MSYS2 Devkit; use `ridk install` if it is not already available.
Alternatively, install Ruby+Devkit 3.3 from
[RubyInstaller](https://rubyinstaller.org/downloads/) and use its terminal.

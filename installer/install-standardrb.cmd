@echo off

mkdir vendor
gem install --no-document --install-dir vendor standard

echo @echo off ^

setlocal ^

%%~dp0\vendor\bin\standardrb %%* ^

> standardrb.cmd

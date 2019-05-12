start consul.exe agent -dev -config-dir ./ -data-dir ./
::for /l %%i in (6001,1,6003) do start consul.exe agent -dev -http-port %%i
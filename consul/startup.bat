start consul.exe agent -dev
::for /l %%i in (6001,1,6003) do start consul.exe agent -dev -http-port %%i
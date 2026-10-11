@echo off
:: =============================================
:: Script: Configurar Variáveis de Ambiente
:: Arquivo: configurar_ambiente.bat
:: Descrição: Define variáveis para desenvolvimento PHP
:: =============================================

echo Configurando variáveis de ambiente para o projeto...
echo.

:: Definir variáveis temporárias (válidas nesta janela do terminal)
set APP_ENV=desenvolvimento
set DB_HOST=localhost
set DB_USER=root
set DB_PASS=senha123
set APP_NAME="Meu Projeto PHP"

:: Definir variáveis permanentes (opcional - descomente se quiser salvar)
echo Definindo variáveis permanentes...
setx APP_ENV "desenvolvimento"
setx DB_HOST "localhost"
setx DB_USER "root"
setx DB_PASS "senha123"
setx APP_NAME "Meu Projeto PHP"

echo.
echo Variáveis configuradas com sucesso! ✅
echo.
echo Valores definidos:
echo.
echo   APP_ENV  = %APP_ENV%
echo   DB_HOST  = %DB_HOST%
echo   DB_USER  = %DB_USER%
echo   DB_PASS  = %DB_PASS%
echo   APP_NAME = %APP_NAME%
echo.
echo 💡 As variáveis temporárias já estão disponíveis nesta janela.
echo    As permanentes estarão disponíveis em novas janelas do terminal.
echo.
echo Executando teste com PHP (certifique-se de que 'php' está no PATH)...
echo.

:: Testar com PHP (opcional)
if exist "env.php" (
    php env.php
) else (
    echo ⚠️  Arquivo 'env.php' não encontrado. Crie um para testar.
)

echo.
pause
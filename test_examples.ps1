Write-Host "==========================="
Write-Host "Testando exemplos essenciais"
Write-Host "==========================="
Write-Host ""

$LOX = ".\c-lox.exe"

$exemplos = @(
    "examples\print\lists_test.lox",
    "examples\print\dict_test.lox",
    "examples\print\enum_test.lox",
    "examples\print\lambda_test.lox",
    "examples\class\custom_operators.lox",
    "examples\function\recursion.lox",
    "examples\if\if.lox",
    "examples\while\simple.lox",
    "examples\variable\global.lox",
    "examples\operator\add.lox",
    "examples\class\empty.lox",
    "examples\closure\nested_closure.lox",
    "examples\return\in_function.lox",
    "examples\string\literals.lox",
    "examples\bool\equality.lox",
    "examples\nil\literal.lox"
)

foreach ($exemplo in $exemplos) {
    Write-Host ""
    Write-Host "--- Executando: $exemplo ---"
    & $LOX $exemplo
}

Write-Host "==========================="
Write-Host "Testes finalizados"
Write-Host "==========================="
Pause 
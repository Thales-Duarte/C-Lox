# C-Lox - Interpretador da Linguagem Lox em C

Este projeto foi desenvolvido como parte do trabalho prático da disciplina de Compiladores, com o objetivo de aprofundar o entendimento sobre a construção de interpretadores e a implementação de linguagens de programação. Ele foi baseado em três principais referências:

- O livro [Crafting Interpreters](https://craftinginterpreters.com/), que serviu de guia teórico e prático para a implementação da linguagem Lox.
- O repositório original de referência (pasta `origin`), que traz uma implementação básica da linguagem Lox em C.
- O repositório [lox-fun-es-Thales-Duarte](https://github.com/ThalesD/lox-fun-es-Thales-Duarte), que apresenta uma versão em Python, exemplos e exercícios, permitindo estudo comparativo entre abordagens e linguagens.

## Algumas Melhorias e Diferenciais

Durante o desenvolvimento, foram realizadas diversas melhorias em relação às referências originais:

- **Testes automatizados:** Foi criado um script batch para rodar todos os exemplos essenciais automaticamente, facilitando a verificação da robustez do interpretador após cada alteração.
- **Suporte a listas:** Implementação completa de estruturas de dados do tipo lista com funções nativas para manipulação.
- **Suporte a dicionários:** Implementação completa de estruturas de dados do tipo dicionário com funções nativas para manipulação.
- **Suporte a enums:** Implementação completa de tipos enumerados com funções nativas para manipulação.
- **Suporte a funções anônimas (lambdas):** Permite criar funções sem nome, inclusive com closures e corpo de expressão ou bloco.
- **Operadores personalizados:** Permite que classes definam comportamentos personalizados para operadores aritméticos e de comparação.
- **Ferraments de Debug**.

Essas melhorias tornam o projeto uma base sólida para estudos, experimentos e comparações no contexto da disciplina de Compiladores.

## O que é Lox?
Lox é uma linguagem de programação criada para fins educacionais, ideal para aprender sobre construção de interpretadores e compiladores.


## Arquitetura da Máquina Virtual

O C-Lox implementa uma **máquina virtual baseada em stack**, seguindo os princípios clássicos de design de linguagens de programação.

### Componentes Principais

- **Bytecode**: O código fonte Lox é compilado para um bytecode customizado com operações como `OP_CONSTANT`, `OP_ADD`, `OP_CALL`, `OP_JUMP`, etc.
- **Stack Machine**: Utiliza uma pilha para executar operações, onde valores são empilhados e desempilhados conforme necessário
- **Call Frames**: Cada função em execução possui seu próprio frame com closure, instruction pointer e slots de variáveis
- **Memory Management**: Inclui garbage collection automático para gerenciamento de memória

### Fluxo de Execução

1. **Compilação**: Código fonte Lox → Bytecode
2. **Execução**: VM executa bytecode instrução por instrução
3. **Stack Operations**: Operações realizadas na pilha (push/pop)
4. **Runtime**: Gerenciamento de memória e funções nativas


## Funcionalidades Implementadas

### Funcionalidades Básicas
- **Variáveis:** Declaração e atribuição de variáveis globais e locais
- **Funções:** Definição, chamada e recursão
- **Classes:** Declaração, instanciação e métodos
- **Closures:** Funções que capturam variáveis do escopo externo
- **Controle de fluxo:** `if`, `while`, `for`
- **Operadores:** Aritméticos, lógicos e de comparação
- **Tipos de dados:** Números, strings, booleanos, nil
- **Coletor de lixo:** Gerenciamento automático de memória

## Estrutura do Projeto
- **src/**: Código-fonte em C do interpretador.
- **examples/**: Exemplos de programas Lox para testar funcionalidades.
- **build.bat**: Script para compilar o projeto no Windows.
- **test_examples.bat**: Script para executar testes automatizados.
- **QUICKSTART.md**: Guia rápido de uso.

## Como compilar

Pré-requisito: GCC instalado no Windows.

Abra o terminal na raiz do projeto e execute:

```sh
build.bat
```

Ou, manualmente:
```sh
gcc src/chunk.c src/compiler.c src/context.c src/debug.c src/errors.c src/memory.c src/object.c src/scanner.c src/semantic.c src/table.c src/type_checking.c src/value.c src/vm.c src/main.c -O3 -o c-lox.exe
```

O executável `c-lox.exe` será gerado na raiz do projeto.

## Como rodar

### Executar um arquivo Lox
```sh
.\c-lox.exe examples\print\lists_test.lox
```

### Modo interativo (REPL)
```sh
.\c-lox.exe
```

## Exemplos 
Os exemplos abaixo cobrem as principais funcionalidades trabalhadas no trabalho. Execute cada um para validar o funcionamento do interpretador:

- **print/lists_test.lox** — Teste completo de listas e saída básica.
- **print/dict_test.lox** — Teste completo de dicionários.
- **print/enum_test.lox** — Teste completo de enums.
- **print/lambda_test.lox** — Teste completo de funções anônimas (lambdas).
- **class/custom_operators.lox** — Teste completo de operadores personalizados.
- **function/recursion.lox** — Funções e recursão.
- **if/if.lox** — Controle de fluxo condicional.
- **while/simple.lox** — Laços de repetição.
- **variable/global.lox** — Declaração e uso de variáveis globais.
- **operator/add.lox** — Operações aritméticas.
- **class/empty.lox** — Declaração de classes.
- **closure/nested_closure.lox** — Closures (funções que capturam variáveis do escopo externo).
- **return/in_function.lox** — Retorno de valores em funções.
- **string/literals.lox** — Manipulação de strings.
- **bool/equality.lox** — Booleanos e operações de igualdade.
- **nil/literal.lox** — Valor especial `nil` (nulo).

Para rodar um exemplo:
```sh
.\c-lox.exe examples\<caminho_do_exemplo>
```
Exemplo:
```sh
.\c-lox.exe examples\class\custom_operators.lox
```


## Testes Automatizados

Para rodar todos os exemplos essenciais automaticamente e verificar se o interpretador está funcionando corretamente, execute o script:

```
test_examples.bat
```

O script executa cada exemplo essencial e mostra a saída no terminal. Se algum teste falhar, será exibida uma mensagem de erro.

## Dicas e Solução de Problemas
- **Erro de compilação:** Verifique se o GCC está instalado e atualizado.
- **Executável não encontrado:** Certifique-se de que a compilação foi bem-sucedida e que o arquivo `c-lox.exe` está na raiz do projeto.
- **Erro ao rodar exemplos:** Verifique o caminho do arquivo e se ele existe em `examples/`.
- **Problemas com listas:** Certifique-se de que está usando as funções nativas corretas (`list()`, `append()`, `get()`, `set()`, `length()`).
- **Problemas com dicionários:** Certifique-se de que está usando as funções nativas corretas (`dict()`, `dictSet()`, `dictGet()`, `dictDelete()`, `dictLength()`).
- **Problemas com enums:** Certifique-se de que está usando as funções nativas corretas (`enum()`, `enumAddValue()`, `enumGetValue()`, `enumLength()`).

# Limitação do método toString em instâncias

No C-Lox, o método `toString()` **não é chamado automaticamente** ao imprimir uma instância com `print obj;`. O resultado será sempre:

    NomeDaClasse instance



## Visualizador de AST (Árvore de Sintaxe Abstrata)

O projeto possui um modo de debug que permite visualizar a Árvore de Sintaxe Abstrata (AST) das expressões de um programa Lox, sem executar o código. Isso é útil para entender como o parser interpreta cada expressão.

### Como usar

Basta rodar o interpretador com a opção `--ast` ou `-a` antes do caminho do arquivo:

```sh
./c-lox.exe --ast examples/print/lists_test.lox
```

ou

```sh
./c-lox.exe -a examples/print/lists_test.lox
```

A saída mostrará a estrutura sintática de cada expressão do programa. Quando essa opção está ativada, o código não é executado, apenas a árvore sintática é exibida.

## Relatórios de Performance

O script de testes automatizados (`test_examples.bat`) agora mede e exibe o tempo de execução de cada exemplo essencial. Isso permite analisar facilmente a performance de cada funcionalidade do interpretador.

## Cobertura dos Testes

O interpretador possui um sistema de cobertura de testes, que mostra quais partes principais do parser e do compilador foram exercitadas por cada exemplo.

### Como funciona
- Pontos estratégicos do código (como parsing de expressões, declaração de funções, variáveis, classes, comandos if, while, for, print, return, etc.) registram sua execução.
- Após rodar qualquer exemplo ou o script de testes, é exibido um relatório como:
- Cada linha indica que aquela parte do interpretador foi exercitada por pelo menos um exemplo.
- Se algum ponto importante não aparecer, significa que nenhum exemplo testou aquele recurso.

Assim, é possível identificar facilmente quais funcionalidades estão cobertas pelos testes e quais ainda precisam de exemplos específicos.



---




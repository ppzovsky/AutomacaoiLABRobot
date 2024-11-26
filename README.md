# Automação de Testes - Tela de Login OrangeHRM

Este projeto é uma automação de testes para a tela de login do sistema **OrangeHRM**, utilizando **Python** e **Robot Framework**. O objetivo é validar o comportamento da aplicação em diferentes cenários de uso, conforme descrito no plano de testes.

---

## Tecnologias e Ferramentas Utilizadas

- **Python 3.12**: Linguagem de programação.
- **Robot Framework**: Framework de automação de testes.
- **SeleniumLibrary**: Biblioteca para automação de interações no navegador.
- **ChromeDriver**: Driver do navegador utilizado.

---

## Plano de Testes

### 1. Objetivo
Garantir que a funcionalidade de login do OrangeHRM opere corretamente para diferentes cenários de uso, validando entradas, mensagens de erro e comportamentos.

### 2. Escopo
- Validação de campos obrigatórios.
- Autenticação com credenciais válidas e inválidas.
- Comportamento do sistema em tentativas excessivas de login falho.

### 3. Critérios de Aceite
- **Acesso autorizado**: Redirecionar à página inicial com credenciais corretas.
- **Mensagens de erro claras**: Informar o usuário sobre erros específicos.
- **Links externos e recuperação de senha**: Garantir o correto redirecionamento.

### 4. Casos de Teste

| ID    | Cenário                                  | Resultado Esperado                                               |
|-------|------------------------------------------|-------------------------------------------------------------------|
| CT01  | Login bem-sucedido                      | Redireciona à página inicial.                                    |
| CT02  | Login com senha incorreta               | Exibe a mensagem “Invalid credentials”.                          |
| CT03  | Login com usuário não registrado        | Exibe a mensagem “Invalid credentials”.                          |
| CT04  | Campos obrigatórios não preenchidos     | Mensagem “Required” e bordas em vermelho para campos vazios.     |
| CT05  | Acessar “Forgot your password?”         | Redireciona à página “Reset Password”.                           |
| CT06  | Acessar LinkedIn                        | Redireciona à página do LinkedIn da OrangeHRM em nova guia.      |
| CT07  | Acessar YouTube                         | Redireciona à página do YouTube da OrangeHRM em nova guia.       |
| CT08  | Acessar Facebook                        | Redireciona à página do Facebook da OrangeHRM em nova guia.      |
| CT09  | Acessar Twitter                         | Redireciona à página do Twitter da OrangeHRM em nova guia.       |
| CT10  | Acessar “OrangeHRM.Inc”                 | Redireciona ao site oficial em nova guia.                        |

---

## Configuração do Ambiente

### Pré-requisitos
1. **Python 3.12** instalado.
2. Instalar as dependências do projeto utilizando o **PIP**:
   ```bash
   pip install -r requirements.txt
   ```

### Dependências (requirements.txt)
```plaintext
robotframework
robotframework-seleniumlibrary
robotframework-browser
robotframework-screencap
robotframework-faker
robotframework-datetime
```

### Configuração do Navegador
1. Certifique-se de que o navegador e o driver (por exemplo, ChromeDriver ou geckodriver) estejam configurados e compatíveis.

---

## Execução dos Testes

1. Para executar os testes, utilize o comando:
   ```bash
   python config.py
   ```
   - A pasta que conterá os relatórios e logs gerados pode ser alterada neste arquivo.

2. Para visualizar o relatório de execução, abra o arquivo `output/report.html` no navegador.

---

## Estrutura dos Arquivos

### Arquivo `variables.robot`
Contém as variáveis globais, como URLs, credenciais e seletores utilizados nos testes.

### Arquivo `keywords.robot`
Define as palavras-chave reutilizáveis que encapsulam ações, como "Abrir Navegador" ou "Realizar Login".

### Arquivo `logintests.robot`
Inclui os casos de teste, organizados conforme o plano de testes.

---

## Autor

Desenvolvido por **João Pedro Soares de Brito**.

---

## Considerações Finais

Este projeto demonstra a aplicação prática do **Robot Framework** para automação de testes funcionais, com foco em modularidade e reaproveitamento de componentes.


# Guia de Configuração para Emacs e Vim no Linux

Este repositório serve como um guia prático para realizar modificações e personalizações nos editores de texto Emacs e Vim, explorando suas amplas possibilidades e utilidades no ambiente Linux. Descubra como essas ferramentas podem transformar sua experiência de edição e aumentar sua produtividade no desenvolvimento e administração de sistemas.

## Sobre Emacs e Vim

- **Emacs**: Um poderoso editor de texto extensível com uma grande variedade de funcionalidades, ideal para edição de texto, programação e gerenciamento de arquivos.
- **Vim**: Um editor de texto altamente configurável e eficiente, favorecido por sua velocidade e pelos muitos comandos que permitem realizar tarefas complexas rapidamente.

## Por que Usar Emacs e Vim?

Tanto Emacs quanto Vim oferecem:
- Configurações personalizáveis para atender às suas necessidades específicas.
- Integração com várias linguagens de programação e ferramentas de desenvolvimento.
- Suporte a plugins que expandem suas funcionalidades ainda mais.
- Eficiência na edição de texto que pode aumentar sua produtividade significativamente.

## Contribuições

Este guia está aberto a contribuições e sugestões de melhorias. Sinta-se à vontade para adicionar novas dicas, truques ou configurações que você descobrir ao longo do tempo.

Explore o potencial do Emacs e do Vim no Linux e descubra por que esses editores são tão aclamados pela comunidade de desenvolvimento e administração de sistemas!

![bio](./vim/assets/vim1.png)



# Emacs

Emacs é um editor de texto altamente personalizável e extensível, originalmente desenvolvido por Richard Stallman em 1976. É mais do que um simples editor de texto; é uma plataforma de desenvolvimento integrada (IDE) e um ambiente de trabalho completo para programadores e outros profissionais que lidam com texto.

## Características Principais

1. **Extensibilidade**: Emacs pode ser expandido e personalizado usando Emacs Lisp, uma linguagem de programação específica do Emacs. Isso permite que os usuários adicionem novas funcionalidades e ajustem o comportamento do editor conforme suas necessidades.

2. **Multi-janela e Multi-buffer**: Suporta múltiplas janelas e buffers, permitindo que os usuários trabalhem em vários arquivos ao mesmo tempo, visualizem diferentes partes do mesmo arquivo simultaneamente e alternem facilmente entre tarefas.

3. **Ambiente Integrado**: Oferece suporte para a execução de compiladores, depuradores e outros utilitários de desenvolvimento diretamente dentro do editor. Isso faz do Emacs uma poderosa IDE para diversas linguagens de programação.

4. **Edição de Texto Avançada**: Inclui uma ampla gama de comandos para navegação, busca, substituição e manipulação de texto, tornando a edição de texto eficiente e precisa.

5. **Modos Principais e Secundários**: Possui modos principais que fornecem funcionalidades específicas para diferentes linguagens de programação e tipos de arquivo (como Python, HTML, LaTeX) e modos secundários que adicionam funcionalidades adicionais (como verificação ortográfica, controle de versão).

6. **Documentação e Ajuda Interna**: Inclui um sistema de ajuda abrangente, com tutoriais, manuais e descrições detalhadas de comandos e funções disponíveis diretamente no editor.

7. **Personalização de Interface**: Permite personalizar a interface do usuário, incluindo esquemas de cores, fontes, layout de janelas e mais, para se adequar ao gosto e necessidades de cada usuário.

## Exemplos de Uso

- **Programação**: Emacs é amplamente utilizado por programadores para escrever e depurar código em várias linguagens de programação.
- **Escrita Técnica**: Usado para escrever e formatar documentos técnicos, incluindo artigos, livros e documentação de software.
- **Gerenciamento de Tarefas**: Com pacotes como `org-mode`, é possível gerenciar tarefas, tomar notas e organizar informações de forma eficiente.

## Comandos Básicos do Emacs

### Navegação
- `C-f`: Move o cursor para a frente um caractere (Control + f).
- `C-b`: Move o cursor para trás um caractere (Control + b).
- `C-n`: Move o cursor para a linha seguinte (Control + n).
- `C-p`: Move o cursor para a linha anterior (Control + p).
- `M-f`: Move o cursor para a frente uma palavra (Meta + f).
- `M-b`: Move o cursor para trás uma palavra (Meta + b).
- `C-a`: Move o cursor para o início da linha (Control + a).
- `C-e`: Move o cursor para o final da linha (Control + e).
- `M-<`: Move o cursor para o início do buffer (Meta + <).
- `M->`: Move o cursor para o final do buffer (Meta + >).

### Edição
- `C-d`: Apaga o caractere sob o cursor (Control + d).
- `M-d`: Apaga a palavra à frente do cursor (Meta + d).
- `C-k`: Corta (kill) o texto da posição do cursor até o final da linha (Control + k).
- `C-y`: Cola (yank) o texto cortado ou copiado (Control + y).
- `M-y`: Alterna entre as últimas seleções cortadas ou copiadas após `C-y` (Meta + y).
- `C-w`: Corta a seleção (Control + w).
- `M-w`: Copia a seleção (Meta + w).

### Arquivos e Buffers
- `C-x C-f`: Abre um arquivo (Control + x, Control + f).
- `C-x C-s`: Salva o arquivo atual (Control + x, Control + s).
- `C-x C-w`: Salva o arquivo atual com um novo nome (Control + x, Control + w).
- `C-x k`: Fecha (kill) o buffer atual (Control + x, k).
- `C-x b`: Troca para outro buffer (Control + x, b).

### Janelas
- `C-x 0`: Fecha a janela atual (Control + x, 0).
- `C-x 1`: Fecha todas as outras janelas, exceto a atual (Control + x, 1).
- `C-x 2`: Divide a janela atual horizontalmente (Control + x, 2).
- `C-x 3`: Divide a janela atual verticalmente (Control + x, 3).

### Ajuda
- `C-h t`: Abre o tutorial do Emacs (Control + h, t).
- `C-h k`: Descreve o comando associado a uma tecla (Control + h, k).
- `C-h f`: Descreve uma função (Control + h, f).
- `C-h v`: Descreve uma variável (Control + h, v).

### Outras Funções
- `M-x`: Executa um comando pelo nome (Meta + x). Este comando é utilizado para acessar uma vasta gama de funcionalidades adicionais no Emacs.

---

`C-` significa "Control" e `M-` significa "Meta", que geralmente é a tecla "Alt" em muitos teclados.

Esses são apenas alguns dos comandos básicos. O Emacs é altamente expansível, e você pode personalizá-lo e estendê-lo conforme suas necessidades usando o Emacs Lisp.

# Guia Rápido do Vim

Vim, abreviação de "Vi IMproved", é um editor de texto altamente configurável amplamente utilizado por programadores e administradores de sistemas. Derivado do editor Vi, o Vim oferece uma ampla gama de funcionalidades avançadas como edição de múltiplos arquivos, destaque de sintaxe, suporte a plugins, e uma vasta coleção de comandos e atalhos que facilitam a edição eficiente de texto. Apesar de ter uma curva de aprendizado íngreme, o Vim recompensa os usuários com uma produtividade significativa uma vez que dominam seus comandos e modos de operação. O Vim é um software de código aberto disponível para várias plataformas, incluindo Unix, Linux, Windows e macOS.

## Modos
- **Modo Normal**: Modo padrão para navegação e execução de comandos (pressione `Esc` para entrar neste modo).
- **Modo de Inserção**: Modo para inserir texto (pressione `i` para entrar neste modo a partir do Modo Normal).
- **Modo Visual**: Modo para seleção de texto (pressione `v` para entrar neste modo a partir do Modo Normal).
- **Modo de Linha de Comando**: Modo para executar comandos de linha (pressione `:` para entrar neste modo a partir do Modo Normal).

## Navegação Básica
- `h`, `j`, `k`, `l`: Mover o cursor para a esquerda, baixo, cima e direita, respectivamente.
- `gg`: Ir para o início do arquivo.
- `G`: Ir para o final do arquivo.
- `0` (zero): Ir para o início da linha.
- `$`: Ir para o final da linha.
- `w`: Avançar para o início da próxima palavra.
- `b`: Retroceder para o início da palavra anterior.

## Inserção de Texto
- `i`: Inserir antes do cursor.
- `a`: Inserir após o cursor.
- `o`: Inserir uma nova linha abaixo da linha atual.
- `O`: Inserir uma nova linha acima da linha atual.

## Edição de Texto
- `x`: Apagar o caractere sob o cursor.
- `dd`: Apagar a linha inteira.
- `yy`: Copiar a linha inteira (yank).
- `p`: Colar após o cursor.
- `u`: Desfazer a última ação.
- `Ctrl + r`: Refazer a última ação desfeita.

## Comandos de Busca e Substituição
- `/texto`: Procurar por "texto" no arquivo.
- `n`: Ir para a próxima ocorrência da busca.
- `N`: Ir para a ocorrência anterior da busca.
- `:%s/antigo/novo/g`: Substituir todas as ocorrências de "antigo" por "novo" no arquivo.

## Salvar e Sair
- `:w`: Salvar o arquivo.
- `:q`: Sair do Vim.
- `:wq` ou `ZZ`: Salvar e sair.
- `:q!`: Sair sem salvar alterações.

Este guia de referência rápida cobre as operações básicas e é um bom ponto de partida para começar a usar o Vim. Com o tempo, você pode aprender mais comandos avançados e personalizar o Vim para atender às suas necessidades específicas.

### Aula: Introdução às Linguagens de Marcação

---

#### Linguagens de marcação: 

1 - HTML  
2 - LaTeX (TEX)  
3 - Markdown (MD)  
4 - R Markdown (RMD)  

---

### 1. HTML (Hyper-Text Markup Language)

**Descrição:**
- Linguagem padrão para criação de páginas web.
- Estrutura o conteúdo da web com tags.

**Principais Sintaxes:**

- **Estrutura Básica:**

  ```html
  <html>  
  <head>  
    <title>Meu Site</title>  
  </head>  
  <body>  
    <h1>Bem-vindo!</h1>  
    <p>Este é um parágrafo.</p>  
  </body>  
  </html>  
  ```

- **Links e Imagens:**
  ```html
  <a href="https://exemplo.com">Clique aqui</a>
  <img src="logo.png" alt="Logo">
  ```

- **Exemplo:**

```html
<html>
<head>
  <title>Meu Primeiro Site</title>
</head>
<body>
  <h1>Olá Mundo!</h1>
  <p>Este é um exemplo de página HTML.</p>
  <a href="https://exemplo.com">Visite nosso site</a>
</body>
</html>
```

---

### 2. LaTeX (TEX)

**Descrição:**
- Sistema de preparação de documentos, especialmente para textos científicos.
- Alta qualidade tipográfica e controle preciso de formatação.

**Principais Sintaxes:**

- **Estrutura Básica:**

  ```latex
  \documentclass{article}
  \begin{document}
  \title{Meu Documento}
  \author{Autor}
  \date{\today}
  \maketitle
  \section{Introdução}
  Este é um exemplo de documento LaTeX.
  \end{document}
  ```

- **Fórmulas Matemáticas:**

  ```latex
  \begin{equation}
  E = mc^2
  \end{equation}
  ```

- **Exemplo:**

```latex
\documentclass{article}
\begin{document}
\title{Relatório Científico}
\author{Nome do Autor}
\date{\today}
\maketitle

\section{Introdução}
Este é um exemplo de documento em LaTeX.

\section{Métodos}
Detalhamento dos métodos utilizados.

\section{Resultados}
Apresentação dos resultados obtidos.

\section{Conclusão}
Discussão e conclusões finais.

\end{document}
```

---

### 3. Markdown (MD)

**Descrição:**

- Linguagem simples para formatação de texto.
- Usada principalmente em documentos de texto simples, README files e documentos colaborativos.

**Principais Sintaxes:**

- **Títulos:**

  ```markdown
  # Título 1
  ## Título 2
  ### Título 3
  ```

- **Ênfase:**
  ```markdown
  *Itálico* ou _Itálico_
  **Negrito** ou __Negrito__
  ```

- **Listas:**
  ```markdown
  - Item 1
  - Item 2
      - Subitem 2.1
  ```

- **Links e Imagens:**
  ```markdown
  [Texto do Link](URL)
  ![Alt text](URL da imagem)
  ```

**Exemplo:**

```markdown
# Meu Documento
Este é um exemplo de documento em **Markdown**.

- Item 1
- Item 2

![Logo](https://exemplo.com/logo.png)
```

---

### 4. R Markdown (RMD)

**Descrição:**

- Extensão do Markdown para integração com R.
- Permite incluir código R que é executado e renderizado junto ao documento.

**Principais Sintaxes:**

- **Chunks de Código:**

  ```markdown
  ```{r}
  summary(cars)
  ```
  ```

- **Inline R Code:**
  ```markdown
  A média da velocidade é `r mean(cars$speed)`.
  ```

**Exemplo:**
```markdown
---
title: "Análise de Dados"
output: html_document
---

# Introdução
Este documento inclui código em R.

```{r}
plot(cars)
```
```

---


### Comparação Visual

| Linguagem | Uso Principal | Facilidade de Uso | Melhor Aplicação |
|-----------|---------------|-------------------|------------------|
| Markdown  | Documentação e notas simples | Fácil | README, documentos colaborativos |
| R Markdown| Relatórios reprodutíveis | Moderada | Relatórios estatísticos e científicos |
| HTML      | Desenvolvimento Web | Moderada | Sites e aplicações web |
| LaTeX     | Publicações científicas | Difícil | Artigos acadêmicos, livros técnicos |

---



<!--
### Exercício Prático

1. **Markdown:** Crie um README para um projeto.
2. **R Markdown:** Gere um relatório com análise de dados.
3. **HTML:** Desenvolva uma página web simples.
4. **LaTeX:** Escreva um artigo científico com seção, figuras e tabelas.

---

### Conclusão
As linguagens de marcação são ferramentas poderosas que simplificam a formatação e a apresentação de documentos. Escolha a linguagem apropriada de acordo com o contexto e os requisitos do seu projeto.

---

-->
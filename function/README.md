# Funções

1. **Função para formatação de CPF/CNPJ**
2. **Função para geração de slugs a partir de títulos**

---

## **Função: STR_FORMAT**

### **Descrição:**
A função `STR_FORMAT` serve para formatar entradas de CPF e CNPJ, transformando os números em uma versão legível. A função aceita tanto o CPF (11 dígitos) quanto o CNPJ (14 dígitos).

### **Entrada (INPUT):**
A entrada da função é um número no formato de uma string com 11 ou 14 caracteres, representando um CPF ou CNPJ. Caso o valor fornecido não seja numérico ou não tenha o tamanho esperado, um erro será gerado.

### **Saída (OUTPUT):**
A função retorna o valor formatado de acordo com a estrutura de CPF ou CNPJ:
- Para CPF (11 dígitos): `XXX.XXX.XXX-XX`
- Para CNPJ (14 dígitos): `XX.XXX.XXX/XXXX-XX`

### **Exemplo:** (casos que vão resultar em erro)

Entrada:

- **Entrada:** `aa10517815a`
- **Saída:**

> [!CAUTION]
> 45000: Entrada inválida, forneça somente números

Trecho da validação implementando:

```sql
  IF input_fn NOT REGEXP '^[0-9]+$' THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Entrada inválida, forneça somente números';
  END IF;
```

### **Exemplo:** (corretos)

- **Entrada:** `04105178151`
- **Saída:** `041.051.781-51`



## **Função: SLUG_FORMAT**

### **Descrição:**
A função `SLUG_FORMAT` transformar um título ou string em um "slug", que é uma versão para URL. Além disso, a função remove caracteres especiais e acentuação para garantir a URL limpa.


### **Entrada (INPUT):**
A função recebe uma string de título e retorna uma versão formatada sem caracteres especiais, com letras minúsculas e palavras separadas por hífens.

### **Saída (OUTPUT):**
A saída será um string transformada em slug, com os seguintes ajustes:
- Espaços serão substituídos por hífens (`-`).
- Caracteres especiais serão removidos.
- Caracteres acentuados serão substituídos por suas versões sem acento.

### **Exemplo:**

- **Entrada:** `' Cem Anos De Solidão! '`
- **Saída:** `cem-anos-de-solidao`
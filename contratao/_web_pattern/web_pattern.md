# PADRÃO DE PROJETOS WEB — DESIGN PREMIUM

Use este documento como briefing-base para novos projetos web.

## 1. Objetivo de qualidade

O projeto deve parecer um produto digital finalizado, não um protótipo técnico.

Priorizar:
- clareza imediata;
- hierarquia visual forte;
- baixa carga cognitiva;
- execução intuitiva;
- acabamento consistente;
- sensação de produto SaaS premium;
- responsividade real;
- acessibilidade;
- performance;
- manutenção simples.

A estética nunca deve competir com o conteúdo.

## 2. Tema e identidade visual

- Tema padrão: **claro**.
- Tema escuro: opção secundária do usuário.
- Evitar branco puro em grandes áreas quando um cinza muito claro produzir melhor conforto visual.
- Usar superfícies em camadas, com diferenças sutis de fundo, borda e elevação.
- Usar uma cor primária e uma cor de apoio.
- Cor de destaque deve ser usada principalmente para ação primária, estado selecionado, progresso e indicadores realmente importantes.
- Evitar usar a cor de marca em todos os controles.
- Estados de sucesso, atenção e erro devem combinar cor + texto/ícone.

Direção visual:
- base clara neutra;
- violeta/azul como acento principal;
- teal/verde como apoio;
- vermelho e âmbar apenas para estados semânticos;
- sombras suaves;
- bordas discretas;
- cantos arredondados moderados;
- gradientes discretos e funcionais.

## 3. Arquitetura de informação

Antes de estilizar:
1. definir a ação principal do usuário;
2. definir a informação que precisa aparecer primeiro;
3. separar conteúdo secundário;
4. esconder controles avançados até serem necessários.

Regra de prioridade:
- “o que importa agora?”;
- contexto;
- histórico;
- configurações;
- detalhes.

Aplicar progressive disclosure:
- configurações avançadas em modal, drawer, details ou seção secundária;
- não expor tudo na primeira dobra;
- evitar dashboards compostos por muitos cards com o mesmo peso.

## 4. Layout

Desktop:
- largura de conteúdo controlada;
- grid consistente;
- sidebar quando houver múltiplas áreas;
- topbar discreta;
- área principal orientada à tarefa;
- respiro generoso.

Mobile:
- reorganizar blocos, não apenas “encolher” o desktop;
- reduzir densidade;
- priorizar conteúdo;
- usar navegação compacta ou inferior quando fizer sentido;
- respeitar safe areas.

Evitar:
- excesso de colunas;
- tabelas sem fallback;
- controles apertados;
- informação importante encostada nas bordas.

## 5. Hierarquia visual

Usar poucos níveis claros:
- título principal;
- título de seção;
- título de componente;
- texto;
- metadado.

KPIs:
- exibir apenas indicadores que mudam decisões;
- priorizar 3–4 métricas principais;
- diferenciar claramente valor, rótulo e contexto.

Cards:
- não usar card para tudo;
- cards devem agrupar informações semanticamente relacionadas;
- listas e rows compactas são preferíveis para informação repetitiva.

## 6. Tipografia

- Preferir system stack ou fonte web de excelente legibilidade.
- Corpo: aproximadamente 14–16 px em desktop.
- Texto secundário não deve ficar pequeno apenas para “parecer elegante”.
- Títulos podem usar tracking levemente negativo com parcimônia.
- Não abusar de uppercase.
- Pesos devem reforçar hierarquia.

## 7. Componentes

Botões:
- ação primária inequívoca;
- secundários discretos;
- ícone sozinho apenas quando o significado for óbvio;
- área clicável confortável;
- hover, focus, active e disabled.

Inputs:
- labels sempre visíveis;
- foco claro;
- validação junto ao campo;
- placeholder nunca como única identificação.

Filtros:
- agrupados;
- fáceis de limpar;
- discretos em relação ao conteúdo.

Modais:
- usados para tarefas delimitadas;
- fechamento óbvio;
- foco gerenciado;
- conteúdo curto e acionável.

## 8. Acessibilidade

Meta mínima: **WCAG 2.2 AA**.

Implementar:
- navegação por teclado;
- `:focus-visible` claro;
- contraste adequado;
- alvos de toque confortáveis;
- labels associados;
- landmarks semânticos;
- headings em ordem lógica;
- `aria-label` quando necessário;
- skip link;
- estado nunca comunicado apenas por cor;
- `prefers-reduced-motion`;
- suporte a zoom;
- texto redimensionável.

## 9. Microinterações

- animações curtas e funcionais;
- transições explicam mudança de estado;
- evitar movimento decorativo constante;
- hover sutil;
- loaders apenas quando há espera real;
- toast para confirmações leves;
- confirmação para ações destrutivas.

## 10. Dashboards e progresso

Sempre mostrar:
- o que fazer agora;
- progresso total;
- próxima meta;
- atraso/adiantamento com contexto;
- drill-down sem poluir a visão principal.

Gráficos:
- rótulos próximos aos dados;
- não depender apenas de cor;
- escalas honestas;
- sem 3D ou ornamentos sem função.

## 11. Responsividade

Testar:
- 360 px;
- 390/430 px;
- 768 px;
- 1024 px;
- 1280 px;
- 1440+ px.

Critérios:
- sem overflow horizontal acidental;
- controles usáveis por toque;
- textos sem truncamento destrutivo;
- modais dentro da viewport;
- navegação sempre acessível;
- ações principais visíveis.

## 12. Performance

Priorizar:
- HTML/CSS/JS enxuto;
- evitar dependências sem valor;
- lazy loading quando aplicável;
- imagens otimizadas;
- fontes com estratégia de carregamento;
- DOM enxuto;
- evitar layout shift;
- JS não bloqueante;
- animações performáticas.

Considerar Core Web Vitals:
- LCP;
- INP;
- CLS.

## 13. Persistência e confiabilidade

Se o projeto for local/autônomo:
- salvar estado explicitamente;
- versionar schema;
- migrar versões anteriores;
- permitir exportar/importar backup;
- nunca perder dados silenciosamente;
- tratar falhas;
- confirmar ações destrutivas.

## 14. Qualidade técnica

- HTML semântico;
- CSS organizado por tokens/componentes;
- custom properties para tema;
- JS modular por responsabilidade, mesmo em arquivo único;
- nomes claros;
- validação de estados;
- edge cases tratados;
- mensagens de erro compreensíveis.

## 15. Critério de acabamento

Antes de entregar, revisar:
- alinhamento;
- espaçamento;
- raios;
- bordas;
- contraste;
- tipografia;
- hover/focus;
- responsividade;
- mobile;
- empty states;
- loading states;
- erros;
- ações destrutivas;
- tema claro;
- tema escuro;
- impressão;
- persistência;
- acessibilidade por teclado.

Pergunta final de QA:
**“Isso parece um produto finalizado por uma equipe de produto madura ou um protótipo gerado rapidamente?”**

Se parecer protótipo, continuar refinando.

## 16. Padrão preferencial

Quando não houver instrução contrária:
- tema inicial: claro;
- visual: premium, limpo, sóbrio e moderno;
- densidade: média;
- cores: refinadas, sem saturação excessiva;
- orientação: produtividade e decisão;
- interface: intuitiva para uso diário;
- desktop muito bem resolvido;
- mobile realmente redesenhado;
- evitar aparência genérica de template;
- evitar “card soup”;
- evitar gradientes chamativos;
- evitar excesso de emojis;
- preservar recursos úteis em redesigns;
- redesign deve revisar arquitetura e UX, não apenas CSS.

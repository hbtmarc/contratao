# Auditoria e Revamp — 07/10/2026

## Alterações de conteúdo

- Ciclo reiniciado em 07/10/2026.
- Power BI antigo (8h45) substituído pelo curso **Power BI + SQL Server**, de 48h43.
- Sequência técnica reordenada para maximizar aderência rápida ao contrato:
  1. SAP PM — 11h42
  2. SAP MM — 9h15
  3. MS Project — 14h47
  4. Primavera P6 — 11h22
  5. Primavera P6 PRO — 8h38
  6. Dados & BI — 10h09
  7. Power BI + SQL Server — 48h43
  8. Inglês Extremo — 17h38
- Total técnico pendente: **132h14**.
- Com 2h líquidas, segunda a sexta, a projeção-base termina em **12/01/2027**.

## Calendário

- Exportação antiga por sessão não é mais a opção principal.
- Nova exportação **Timeline limpa** usa 1 evento multi-dia por curso.
- Exportação detalhada continua disponível, agora separada e com alerta opcional.
- Ambos os `.ics` declaram `X-WR-CALNAME: Plano Contrato`.
- Incluído script de limpeza segura para macOS.

## UI/UX

- Tema claro preservado como padrão.
- Contraste de estados corrigido no light theme.
- Superfícies, sombras e hover refinados para reduzir aparência de template.
- Metadados de plataforma/instrutor integrados ao roadmap e modal de curso.
- Novo fluxo dedicado de calendário com progressive disclosure.
- Controles de calendário acessíveis por sidebar, topbar e configurações.

## Compatibilidade

- Schema do app atualizado para v6.
- Estados antigos são migrados.
- O progresso do antigo curso de Power BI é zerado porque o curso foi substituído por outro de escopo/duração diferentes.
- Registros legados de Power BI deixam de alimentar automaticamente as horas do novo curso.
- Namespace remoto Firebase foi mantido para preservar compatibilidade com dados já sincronizados.

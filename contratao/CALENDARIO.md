# Calendário — Plano Contrato

## Limpar a importação antiga no Mac

O projeto anterior exportava uma sessão por dia, com títulos iniciados por `Estudo —`.

### Cenário A — você importou em um calendário exclusivo

No Calendário do macOS, exiba a lista de calendários, selecione o calendário usado para o plano e apague-o. Isso remove todos os eventos daquele calendário de uma vez.

### Cenário B — os eventos foram misturados ao calendário pessoal

1. Abra o Calendário.
2. Use a busca e procure por `Estudo —`.
3. Você pode remover manualmente os resultados antigos; ou executar `tools/limpar-calendario-antigo.applescript`.
4. O script pede qual calendário deve ser analisado, conta os eventos encontrados e solicita confirmação antes de apagar.

## Nova estratégia recomendada

Crie um calendário separado chamado **Plano Contrato** e importe o `.ics` nele.

O site oferece duas exportações:

- **Timeline limpa** — recomendada. Um evento de vários dias por curso, sem alertas e sem bloquear disponibilidade.
- **Sessões detalhadas** — um evento por sessão real de estudo. Use somente no calendário separado; alerta de 15 minutos é opcional.

Assim o calendário pode ser ocultado ou apagado sem afetar compromissos pessoais.

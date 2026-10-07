# Plano Contrato

Roadmap premium de preparação (Analista de Negócios + Planejista): progresso, cobertura editável, calendário `.ics` em modo limpo/detalhado, timer e sincronização via Firebase RTDB.

## Publicar no GitHub (primeira vez)

Na raiz do projeto, com [GitHub CLI](https://cli.github.com/) instalado:

```bash
gh auth login
./scripts/publish-github.sh
```

Isso envia a branch `main` para **`hbtmarc/contratao`** e dispara o workflow de Pages.

## Acesso online (GitHub Pages)

Após o deploy, o app fica em:

**https://hbtmarc.github.io/contratao/**

### Publicar Pages

1. Repositório no GitHub → **Settings** → **Pages**
2. **Build and deployment** → Source: **GitHub Actions** (o workflow `.github/workflows/pages.yml` faz o deploy automático a cada push na `main`)

Ou, sem Actions: Source **Deploy from a branch** → branch `main` → pasta **`/docs`**.

### Firebase (obrigatório para login Google na web)

No [Console Firebase](https://console.firebase.google.com/project/diversos-web/authentication/settings) → **Authorized domains**, inclua:

- `localhost` (desenvolvimento)
- `hbtmarc.github.io` (GitHub Pages)

Authentication → **Google** deve estar habilitado.

## Desenvolvimento local

```bash
cd docs
python3 -m http.server 8080
```

Abra **http://localhost:8080/** (não use `file://`).

Edite **`docs/index.html`** (app em arquivo único). Para testar alterações antes do Pages, use o servidor acima.

## Regras RTDB (Firebase CLI)

Na raiz do repositório:

```bash
npx firebase-tools@latest deploy --only database
```

Projeto padrão: **diversos-web** (`.firebaserc`).

## Estrutura

| Caminho | Uso |
|--------|-----|
| `docs/index.html` | App estático (GitHub Pages) |
| `database.rules.json` | Regras Realtime Database |
| `firebase.json` / `.firebaserc` | Deploy das regras |
| `_web_pattern/` | Padrão visual/UX do projeto |

## Backup

Dentro do app: **Configurações** → exportar/importar backup JSON. Com Google conectado, o estado também fica em `users/{uid}/planoContrato/v4` no RTDB.


## Calendário

Para evitar poluir o calendário pessoal, crie um calendário separado chamado **Plano Contrato** e importe o `.ics` nele. O app oferece uma **Timeline limpa** (recomendada) e **Sessões detalhadas**. Consulte `CALENDARIO.md`.

## Auditoria 07/10/2026

Consulte `AUDITORIA_REVAMP.md` para o cronograma atualizado, mudança do curso de Power BI e detalhes da revisão de UI/UX.

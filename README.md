# Plano Contrato

Roadmap de preparação (Analista de Negócios + Planejista): progresso, cobertura de vagas editável, calendário `.ics` e sincronização via Firebase RTDB.

## Acesso online (GitHub Pages)

Após o deploy, o app fica em:

**https://hibmzrc.github.io/plano-contrato/**

(substitua `hibmzrc` / `plano-contrato` se o repositório tiver outro nome ou owner)

### Publicar Pages

1. Repositório no GitHub → **Settings** → **Pages**
2. **Build and deployment** → Source: **GitHub Actions** (o workflow `.github/workflows/pages.yml` faz o deploy automático a cada push na `main`)

Ou, sem Actions: Source **Deploy from a branch** → branch `main` → pasta **`/docs`**.

### Firebase (obrigatório para login Google na web)

No [Console Firebase](https://console.firebase.google.com/project/diversos-web/authentication/settings) → **Authorized domains**, inclua:

- `localhost` (desenvolvimento)
- `hibmzrc.github.io` (GitHub Pages — ajuste se usar outro usuário)

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

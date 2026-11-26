# homebrew-darugoro

[DaruGoro](https://darugoro.amamamam.com/) を Homebrew で入れるための tap です。

## 日本語

### 入れる

```bash
brew install --cask amam335345/darugoro/darugoro
```

初めて開いたあと、「システム設定 > プライバシーとセキュリティ > アクセシビリティ」で DaruGoro を許可してください。

### 新しい版にする

```bash
brew upgrade --cask darugoro
```

### 消す

```bash
brew uninstall --cask darugoro
```

保存したプロファイルと設定も消すときは、`--zap` を付けます。

```bash
brew uninstall --zap --cask darugoro
```

アクセシビリティの一覧に残る DaruGoro は、システム設定で外してください。

### 版の更新のしくみ

[`.github/workflows/update-cask.yml`](.github/workflows/update-cask.yml) が毎日1回、[darugoro-site](https://github.com/amam335345/darugoro-site/releases) の最新リリース（ベータを除く）を見て、`Casks/darugoro.rb` の `version` と `sha256` を書き換えます。すぐに反映するときは、Actions の「Update Cask」から「Run workflow」を押します。

## English

### Install

```bash
brew install --cask amam335345/darugoro/darugoro
```

After the first launch, allow DaruGoro in System Settings > Privacy & Security > Accessibility.

### Upgrade

```bash
brew upgrade --cask darugoro
```

### Uninstall

```bash
brew uninstall --cask darugoro
```

To also remove saved profiles and settings, add `--zap`.

```bash
brew uninstall --zap --cask darugoro
```

Remove DaruGoro from the Accessibility list in System Settings yourself.

### How versions are updated

[`.github/workflows/update-cask.yml`](.github/workflows/update-cask.yml) checks the latest [darugoro-site](https://github.com/amam335345/darugoro-site/releases) release (betas excluded) once a day and updates `version` and `sha256` in `Casks/darugoro.rb`. To update right away, open Actions → "Update Cask" → "Run workflow".

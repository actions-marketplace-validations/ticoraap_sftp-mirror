# SFTP mirror

## Mirror a local directory to a remoteserver directory with SFTP

* Uses [lftp](https://lftp.yar.ru/) to send files with username/password authentication.
* Intentionally autoconfirms the servers host key
* Deletes files not present at the source*




## *Deletes files not present at the source
By design this action deletes files not present at the source, this is helpful if you deploy a static website where you want the old documents to be removed, if you don't want this then you should search for something else or commit to a PR.

## Example usage

```yml
on: [push]

jobs:
  mirror_with_sftp:
    name: deploy
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: SFTP mirror
        uses: verbindingsfout/sftp-mirror@v1.5
        with:
          server: server.com
          user: username
          password: ${{ secrets.PASSWORD }}
          remote: /var/www

          # optional default values:
          port: 22
          local: .
```
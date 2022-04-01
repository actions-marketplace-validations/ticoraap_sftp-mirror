# SFTP mirror

Uses [lftp](https://lftp.yar.ru/) to mirror a local directory to a SFTP server using username/password authentication.

Can be used for mirroring to TransIP webhosting.

**Be warned** this action deletes anything in remote directory that is not in the local directory 

## Example

```yml
on: [push]

jobs:
  upload_with_sftp:
    name: deploy
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: SFTP mirror
        uses: verbindingsfout/sftp-sync-action@v1.0
        with:
          server: my-ssh-server.com
          user: ${{ secrets.USER }}
          password: ${{ secrets.PASSWORD }}
          local: /out
          remote: /www
```
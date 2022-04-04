# SFTP deploy

## username/password. Mirror a local directory to server

* Deletes files not present at the source
* Uses [lftp](https://lftp.yar.ru/) to send files with username/password authentication.
* Autoconfirms the servers host key



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
        uses: verbindingsfout/sftp-mirror@v1.6
        with:
          server: server.com
          user: username
          password: ${{ secrets.PASSWORD }}
          port: 22
          local: ./out/
          remote: /www/

```
| Key Name                | Required | Example                       | Default | Description                                                            |
|-------------------------|----------|-------------------------------|---------|------------------------------------------------------------------------|
| `server`                | Yes      | `ftp.example.com`             |         | Deployment destination server                                          |
| `user`                  | Yes      | `user@example.com`            |         | SFTP user name                                                         |
| `password`              | Yes      | `abc123`                      |         | SFTP password                                                          |
| `port`                  | No       | `2222`                        | `22`    | Server port to connect to (read your web hosts docs)                   |
| `local`                 | No       | `./out/`                      | `./`    | Folder to upload from, must end with trailing slash `/`                |
| `remote`                | No       | `/www/`                       | `./`    | Folder to upload to (on the server), must end with trailing slash `/`  |


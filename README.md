# Docker Delivery Hook Action

Reusable Action for [bbilly1/docker-delivery-hook](https://github.com/bbilly1/docker-delivery-hook).

## Use this action

```yml
- name: Send build webhook
  uses: bbilly1/docker-delivery-hook-action@v1
  with:
    payload: '{"container_name": "your-container-name"}'
    secret_key: ${{ secrets.SECRET_KEY }}
    api_endpoint: ${{ secrets.API_ENDPOINT }}
```

# Paginas nao carregam ao clicar num link:
* Verificar se no html o metodo url_for recebe o nome correto do arquivo
* Verificar se no manager.py existe alguma funcao roteada pelo nome
## Ex: index.html quer chamar brute.html:

* index.html >
```HTML
<a href="{{url_for('brute') }}">BRUTE</a>
```

* manager.py >
```py
@app.route('/brute')
def brute():
    pass
```
___

############### Usando o Server Cascavel - Quixadá ################

<<<<>>>> CRIANDO OS EMBEDDINGS DAS CÉLULAS USANDO O T2VEC <<<<>>>>

1°. O script vocab2vec.jl foi criando para criar os embeddings das células:

2°. Faça a cópia de vocab2vec.jl para dentro do diretório /experiment:
$ cp -fv vocab2vec.jl ~/.conda/envs/porto/t2vec/experiment/

3°. Acesse o path /experiment e execute o script:
$ julia vocab2vec.jl

Observações: 
* Os arquivos exp2-trj.t e exp2-trj.h5 serão criados!
* exp2-trj.t é o arquivo do vocabulário.
* exp2-trj.h5 contém os embeddings de todas as células do vocabulário.
* Para ler os embeddings use o notebook get_vecs.ipynb!


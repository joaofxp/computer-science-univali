import matplotlib.pyplot as plt
import pandas as pd

animes = pd.read_csv("dataanime.csv")
# print(animes)
# Carregue o .csv da base utilizando a biblioteca Pandas e aplique algumas operações com a base
# 2.a. -> Pelo menos um filtro de coluna;
animes = animes[['Title', 'Episodes', 'Status', 'Studios',
                 'Genres', 'Rating', 'Score', 'Scored by', 'Favorites']]
print('2.a. -> Pelo menos um filtro de coluna')
print(animes)

# 2.b. -> Pelo menos duas operações de filtro;
animesCom12Episodios = animes[animes['Episodes'] == "12"]
animesDoStudioWhiteFox = animesCom12Episodios[animesCom12Episodios["Studios"] == "White Fox"]

print('2.b. -> Pelo menos duas operações de filtro')
print(animesCom12Episodios)
print(animesDoStudioWhiteFox)

# 2.c. -> Pelo menos duas operações de groupby.
animesPorGenero = animesDoStudioWhiteFox.groupby(['Genres']).mean()
animesPorStatus = animesPorGenero.groupby(['Score']).mean()

print('2.c. -> Pelo menos duas operações de groupby.')
print(animesPorGenero)  # aqui pode conferir o Score para ver média
print(animesPorStatus)  # aqui pode conferir o Score para ver média

# 2.d. -> Salvar os dados filtrados em um .csv novo
animesCom12Episodios = animes[animes['Episodes'] == "12"]

print('# 2.d. -> Salvar os dados filtrados em um .csv novo')
animesPorStatus.to_csv("animesPorStatus.csv", index=False)

# 3 Imprima gráficos dessa base (filtrada ou do groupby) utilizando a matplotlib
# 3 -> pelo menos 3 graficos

print('3) -> pelo menos 3 graficos')

gp = animes.groupby('Status')
contagemAnimes = gp['Title'].count()
contagemAnimes.plot()

animesPorStatus = animes[animes['Status'].str.contains('Médio')]
gpa = animesPorStatus.groupby('Status')
gpa['Title'].count().plot()
plt.show()


gp = animes.groupby('Genres')
contagemAnimes = gp['Title'].count()
contagemAnimes.plot()

animesPorGenero = animes[animes['Genres'].str.contains('Médio')]
gpa = animesPorGenero.groupby('Genres')
gpa['Title'].count().plot()
plt.show()

gp = animes.groupby('Episodes')
contagemAnimes = gp['Title'].count()
contagemAnimes.plot()

animesCom12Episodios = animes[animes['Episodes'].str.contains('Médio')]
gpa = animesCom12Episodios.groupby('Episodes')
gpa['Title'].count().plot()
plt.show()

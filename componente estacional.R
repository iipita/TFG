
tendencia_comprar = ma(serie_comprar, order = 12)
compro = serie_comprar - tendencia_comprar
estacionalidad_comprar = tslm(compro ~ season)
summary(estacionalidad_comprar)


tendencia_crisis = ma(serie_crisis, order = 12)
criso = serie_crisis - tendencia_crisis
estacionalidad_crisis = tslm(criso~season)
summary(estacionalidad_crisis)

tendencia_desempleo = ma(serie_desempleo, order = 12)
desemplea = serie_desempleo - tendencia_desempleo
estacionalidad_desempleo = tslm(desemplea~season)
summary(estacionalidad_desempleo)

tendencia_infojobs = ma(serie_infojobs, order = 12)
infa = serie_infojobs - tendencia_infojobs
estacionalidad_infojobs = tslm(infa~season)
summary(estacionalidad_infojobs)

tendencia_quiebra = ma(serie_quiebra, order = 12)
quiebro = serie_quiebra - tendencia_quiebra
estacionalidad_quiebra = tslm(quiebro~season)
summary(estacionalidad_quiebra)

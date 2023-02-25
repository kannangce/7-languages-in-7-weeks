musician(lydian, keyboard).
musician(ilayaraja, guitar).
musician(andrew, guitar).

%This would return the musicians playing guitar
findall(X, musician(X,guitar), Y).

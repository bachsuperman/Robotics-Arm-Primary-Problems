clear all; close all;

r = UR3
r.model
q = r.model.getpos()
T = r.model.fkine(q)
qIkine = r.model.ikine(T,q)
r.model.teach(q)
% Adam
%test przelaczania

for j = 1:length(errorNodes)
    %UD_G1 = switchin2(UD_G1,errorNodes(i))
    len = length(keySet);
    nnd = len+1;

    next = findChildren(UD_G1,1,errorNodes(j)); %successors
    prev = findParent(UD_G1,1,errorNodes(j));%predecessors

if isempty(next)==1

    p=errorNodes(j);
    %number of clients to be switched
    cs =  round(clientAmount(string(p))/2);


    %weight of edge connected with new node
    wnew = weights(findnode(UD_G1, errorNodes(j)));
    addedge(UD_G1, prev, string(nnd), wnew);


    %dodac nowa pozycje do keyset
    newnode = length(keySet)+1; 
    keySet{end+1} = newnode;
    %zmniejszyc stara i dodac nowa liczbe klientow dlanowego wezla
    valueSet(findnode(UD_G1, errorNodes(j))) = valueSet(findnode(UD_G1, errorNodes(j))) - cs;
    valueSet(end+1) = cs;

else
%new node number

    howmanymoved = round((length(next))/2);

%weight of edge copied from parent
wnew = UD_G1.Edges.Weight(findedge(UD_G1,findnode(UD_G1,errorNodes(2)),findParent(UD_G1,1, findnode(UD_G1,errorNodes(2)))));

%weight of edge copied from children
%wmoved = UD_G1.Edges.Weight(findedge(UD_G1,errorNodes(3),findChildren(UD_G1,1,errorNodes(3))));
ew=[];
for k=1:length(howmanymoved)
    ew(k) = UD_G1.Edges.Weight(findedge(UD_G1,errorNodes(j),findChildren(UD_G1,1,errorNodes(j))))
end

%process of switching devices from overloaded one
UD_G1 = addnode(UD_G1, 1);
UD_G1 = addedge(UD_G1, prev, string(nnd), wnew);
UD_G1 = addedge(UD_G1, nnd, findnode(UD_G1,next(1:howmanymoved)), ew);
UD_G1 = rmedge(UD_G1, errorNodes(j), next(1:howmanymoved));

end
end
%weights(findnode(UD_G1, )
p1 = plot(UD_G1,'Layout','layered','Direction','down','Sources',[2],'EdgeLabel',UD_G1.Edges.Weight)
highlight(p1, errorNodes,'MarkerSize', 6, 'NodeColor', 'r')
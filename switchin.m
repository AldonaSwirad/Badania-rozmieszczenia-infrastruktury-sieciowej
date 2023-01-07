function switchin(Graph,overloadednode)

len = length(outdegree(Graph));


next = successors(Graph, overloadednode);
prev = predecessors(Graph,overloadednode);

%new node number
nnd = len+1;

howmanymoved = round((length(next))/2);

%process of switching devices from overloaded one
G1 = addnode(Graph, 1);
G1 = addedge(G1, prev, nnd);
G1 = addedge(G1, nnd, findnode(G1,next(1:howmanymoved)));
G1 = rmedge(G1, overloadednode, next(1:howmanymoved));

%plot(G1);
end


% Adam
%test przelaczania

for j = 1:length(errorNodes)
    
    currentNode = errorNodes(j);
    currentNodeIndex = findnode(UD_G1, currentNode);

    next = findChildren(UD_G1, 1, currentNode); %successors
    prev = findParent(UD_G1, 1, currentNode); %predecessors

    %naming the new node
    currentNames = transpose(UD_G1.Nodes.Name);
    SW_Index = find(contains(currentNames,'SW-'));
    SW_Nodes = currentNames(SW_Index);
    for k = 1:length(SW_Nodes)
        cellContents = SW_Nodes{k};
        SW_Nodes{k} = cellContents(4:end);
    end
    SW_NodesSort = sort(str2double(SW_Nodes));
    lastKeyIndex = SW_NodesSort(end);
    newKey = append('SW-', int2str(lastKeyIndex+1));
    keySet{end+1} = newKey;
    UD_G1 = addnode(UD_G1, {newKey});

    if isempty(next)
    
        %number of clients to be switched
        clientsToSwitch =  round(clientAmount(string(currentNode))/2);
    
        %weight of edge connected with new node
        newWeight = weights(currentNodeIndex);
        UD_G1 = addedge(UD_G1, prev, newKey, newWeight);

        %zmniejszyc stara i dodac nowa liczbe klientow dla nowego wezla
        valueSet(currentNodeIndex) = valueSet(currentNodeIndex) - clientsToSwitch;
        valueSet(end+1) = clientsToSwitch;
    
    else

        %number of nodes to be switched
        nodesToSwitch = round(length(next)/2);
        
        %weight of edge copied from parent
        newWeight = UD_G1.Edges.Weight(findedge(UD_G1, currentNode, prev));
        
        %weight of edge copied from children
        %wmoved = UD_G1.Edges.Weight(findedge(UD_G1,errorNodes(3),findChildren(UD_G1,1,errorNodes(3))));
        childrenWeights = zeros(1, nodesToSwitch);
        for k = 1:nodesToSwitch
            childrenWeights(k) = UD_G1.Edges.Weight(findedge(UD_G1,currentNode, next(k)));
        end
        
        %process of switching devices from overloaded one
        UD_G1 = addedge(UD_G1, prev, newKey, newWeight);
        for k = 1:nodesToSwitch
            UD_G1 = rmedge(UD_G1, currentNode, next(k));
            UD_G1 = rmedge(UD_G1, next(k), currentNode);
            UD_G1 = addedge(UD_G1, newKey, next(k), childrenWeights(k));
            UD_G1 = addedge(UD_G1, next(k), newKey, childrenWeights(k));
        end
    end
end

%weights(findnode(UD_G1, )
p1 = plot(UD_G1,'Layout','layered','Direction','down','Sources',2,'EdgeLabel',UD_G1.Edges.Weight);
highlight(p1, errorNodes,'MarkerSize', 6, 'NodeColor', 'r')
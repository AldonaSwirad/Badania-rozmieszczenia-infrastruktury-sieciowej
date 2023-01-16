function [G_relieved, clientAmountUpdate] = relieveNetwork (G, errorNodes, clientAmount, uploadAmount, downloadAmount)
    
    errorNodes    
    relievedNodes = errorNodes;
    while (~isempty(errorNodes))
        
        for j = 1:length(errorNodes)
            
            currentNode = errorNodes(j);
            currentNodeIndex = findnode(G, currentNode);
        
            next = findChildren(G, 1, currentNode); %successors
            prev = findParent(G, 1, currentNode); %predecessors

            clientMapKeys = keys(clientAmount);
            clientMapValues = cell2mat(values(clientAmount));

        
            %naming the new node
            currentNames = transpose(G.Nodes.Name);
            SW_Index = find(contains(currentNames,'SW-'));
            SW_Nodes = currentNames(SW_Index);
            for k = 1:length(SW_Nodes)
                cellContents = SW_Nodes{k};
                SW_Nodes{k} = cellContents(4:end);
            end
            SW_NodesSort = sort(str2double(SW_Nodes));
            lastKeyIndex = SW_NodesSort(end);
            newKey = append('SW-', int2str(lastKeyIndex+1));
            clientMapKeys{end+1} = newKey;
            G = addnode(G, {newKey});
    
            %number of clients to be switched
            clientsToSwitch = round(clientAmount(string(currentNode))/2);
            
            %weight of edge copied from parent
            newWeight = G.Edges.Weight(findedge(G, currentNode, prev));
            G = addedge(G, prev, newKey, newWeight);
            G = addedge(G, newKey, prev, newWeight);
            
            %zmniejszyc stara i dodac nowa liczbe klientow dla nowego wezla
            clientAmount(string(currentNode)) = clientAmount(string(currentNode)) - clientsToSwitch;
            clientMapValues(end+1) = clientsToSwitch;

            clientAmount = containers.Map(clientMapKeys, clientMapValues);
            
            if (~isempty(next))
        
                %number of nodes to be switched
                nodesToSwitch = round(length(next)/2);
                            
                %weight of edge copied from children
                childrenWeights = zeros(1, nodesToSwitch);
                for k = 1:nodesToSwitch
                    childrenWeights(k) = G.Edges.Weight(findedge(G,currentNode, next(k)));
                end
                
                %process of switching devices from overloaded one
                for k = 1:nodesToSwitch
                    G = rmedge(G, currentNode, next(k));
                    G = rmedge(G, next(k), currentNode);
                    G = addedge(G, newKey, next(k), childrenWeights(k));
                    G = addedge(G, next(k), newKey, childrenWeights(k));
                end
            end
        end
    
        %data refresh
        upload = Map(G, clientAmount, uploadAmount); 
        clear Map
        download = Map(G, clientAmount, downloadAmount); 
        clear Map
        [u, d] = simulateNetworkStress(G, 'RT-2', download, upload);
        clear simulateNetworkStress
        errorNodesDownload = findOverloadedNodes(d);
        errorNodesUpload = findOverloadedNodes(u);
        errorNodes = [errorNodesUpload, errorNodesDownload]
        relievedNodes = [relievedNodes, errorNodes];
    end
    
    G_relieved = G;
    clientAmountUpdate = clientAmount;
    p1 = plot(G_relieved,'Layout','layered','Direction','down','Sources',2,'EdgeLabel',G_relieved.Edges.Weight);
    highlight(p1, relievedNodes,'MarkerSize', 6, 'NodeColor', 'green')
end
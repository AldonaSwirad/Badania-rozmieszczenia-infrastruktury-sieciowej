function [loadAmount, updatedOverloadMap] = checkLinkLoad(G, gateway_node, current_node, trafficMap, overloadMap, mode)
%   BEWARE: it's untested.
%   find children and prepare for traffic calculation
    childNodes = findChildren(G, gateway_node, current_node);
    totalTrafficAmount = trafficMap(current_node);
%   we want node overload map to be based on the one provided and update
%   with every node
    partialUpdatedOverloadMap = overloadMap;
%   sum up traffic from all children and current node
    if ~isempty(childNodes)
        for i = 1:length(childNodes)
            [childLinkTrafficAmount, partialUpdatedOverloadMap] = checkLinkLoad(G, gateway_node, childNodes{i}, trafficMap, partialUpdatedOverloadMap, mode);
            totalTrafficAmount = totalTrafficAmount + childLinkTrafficAmount;
        end
    end
%   gateway node link isn't accounted for as I presume, so we ignore
%   oveload calculations if it's the current node
    if ~strcmp(current_node, gateway_node)
        parentNode = findParent(G, gateway_node, current_node);
        switch mode
            case "upload"
                bandwidth = maxflow(G, current_node, parentNode);
            case "download"
                bandwidth = maxflow(G, parentNode, current_node);
            otherwise
                error("Bad mode identifier. Use upload or download.")
        end
        if bandwidth < totalTrafficAmount
            partialUpdatedOverloadMap(current_node) = 1;
%           if the node is overloaded, it sends as much traffic as it can
            totalTrafficAmount = bandwidth;
        end
    end
    loadAmount = totalTrafficAmount;
    updatedOverloadMap = partialUpdatedOverloadMap;
end
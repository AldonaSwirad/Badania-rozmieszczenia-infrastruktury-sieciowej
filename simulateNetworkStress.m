function [uploadOverflowMap, downloadOverflowMap] = simulateNetworkStress(G, gateway_node, nodeDownloadMap, nodeUploadMap)
    nodeList = keys(nodeDownloadMap);
    initialOverflowMap = containers.Map(nodeList, zeros(1, length(nodeList)));
    [~, downloadOverflowMap] = checkLinkLoad(G, gateway_node, gateway_node, nodeDownloadMap, initialOverflowMap, "download");
    [~, uploadOverflowMap] = checkLinkLoad(G, gateway_node, gateway_node, nodeUploadMap, initialOverflowMap, "upload");
end
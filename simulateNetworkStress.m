function [uploadOverflowMap, downloadOverflowMap] = simulateNetworkStress(G, gateway_node, nodeDownloadMap, nodeUploadMap)
    nodeList = keys(nodeDownloadMap);
    initialOverflowMap = containers.Map(nodeList, zeros(1, length(nodeList)));
    initialUploadOverflowMap = containers.Map(initialOverflowMap.keys, initialOverflowMap.values);
    initialDownloadOverflowMap =  containers.Map(initialOverflowMap.keys, initialOverflowMap.values);
    [~, initialDownloadOverflowMap] = checkLinkLoad(G, gateway_node, gateway_node, nodeDownloadMap, initialDownloadOverflowMap, "download");
    [~, initialUploadOverflowMap] = checkLinkLoad(G, gateway_node, gateway_node, nodeUploadMap, initialUploadOverflowMap, "upload");
    uploadOverflowMap =  containers.Map(initialUploadOverflowMap.keys, initialUploadOverflowMap.values);
    downloadOverflowMap =  containers.Map(initialDownloadOverflowMap.keys, initialDownloadOverflowMap.values);
end
function validChildren = findChildren(G, root_node, current_node)
    successors_list = successors(G, current_node);
    current_path_length = length(shortestpath(G, current_node, root_node));
    childNodeList = [];
    for i = 1: length(successors_list)
        if length(shortestpath(G, successors_list(i), root_node)) > current_path_length
            childNodeList = [childNodeList,successors_list(i)];
        end
    end
    validChildren = childNodeList;
end

def flatten(l):
    flat_list = []
    # Iterate through the outer list
    for element in l:
        if type(element) is list:
            # If the element is of type list, iterate through the sublist
            for item in element:
                flat_list.append(item)
        else:
            flat_list.append(element)
    for item in flat_list:
        if type(item) is list:
            return flatten_list(flat_list)
    return flat_list

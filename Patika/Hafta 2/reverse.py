def rev(c):
    reverse_list = c.copy()
    for index,item in enumerate(c):
        reverse_list[len(c)-index-1] = item[::-1]
    return reverse_list

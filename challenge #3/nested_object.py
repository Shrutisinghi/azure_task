def get_value(dict_obj,key):
    ks = key.split("/")
    for k in ks:
        dict_obj = dict_obj[k]
    return dict_obj

dict_object = {'a': {'b': {'c': 'd'}}}
keys = "a/b/c"
# printing result 
print(get_value(dict_object,keys))
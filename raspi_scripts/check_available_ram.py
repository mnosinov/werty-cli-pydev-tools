import resource

soft, hard = resource.getrlimit(resource.RLIMIT_AS)
print(soft)
print(hard)

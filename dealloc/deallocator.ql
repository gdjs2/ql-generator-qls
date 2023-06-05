import cpp

predicate isDeallocator(Function fun) {
	fun.hasGlobalName("malloc")
	/* Will be modified by generator, $$ $$ is the identifier for generator */
$$0$$
}

from Function alloc
where isDeallocator(alloc)
select alloc, "is a deallocator."
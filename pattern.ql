import cpp

predicate isAllocator(Function fun) {
	fun.hasGlobalName("malloc")
	/* Will be modified by generator, $$ $$ is the identifier for generator */
	$$ $$
}

from Function alloc
where isAllocator(alloc)
select alloc, "is an allocator."
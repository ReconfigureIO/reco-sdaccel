package benchmarks

import (
	"fmt"
	"testing"
)

func mbPerSec(r testing.BenchmarkResult) float64 {
	if r.Bytes <= 0 || r.T <= 0 || r.N <= 0 {
		return 0
	}
	return (float64(r.Bytes) * float64(r.N) / 1e6) / r.T.Seconds()
}

func GipedaResults(suffix string, r testing.BenchmarkResult) {
	fmt.Printf("runtime/%s;%d\n", suffix, r.NsPerOp())
	mbs := mbPerSec(r)
	if mbs > 0 {
		fmt.Printf("mbsPerSec/%s;%.2f\n", suffix, mbs)
	}
	fmt.Printf("allocs/%s;%d\n", suffix, r.AllocsPerOp())
	fmt.Printf("bytes/%s;%d\n", suffix, r.AllocedBytesPerOp())
	fmt.Printf("n/%s;%d\n", suffix, r.N)
}

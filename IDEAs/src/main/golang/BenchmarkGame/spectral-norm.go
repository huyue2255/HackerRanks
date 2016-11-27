//package BenchmarkGame
package main

import (
	"flag"
	"fmt"
	"math"
	"runtime"
	"strconv"
	"time"
)

var n = 0    // var n = flag.Int("n", 2000, "count")
var nCPU = 4 // var nCPU = flag.Int("ncpu", 4, "number of cpus")

type Vec []float64

func (v Vec) Times(ii, n int, u Vec, c chan int) {
	ul := len(u)
	for i := ii; i < n; i++ {
		var vi float64
		for j := 0; j < ul; j++ {
			vi += u[j] / float64(((i + j) * (i + j + 1) / 2 + i + 1))
		}
		v[i] = vi
	}
	c <- 1
}

func (v Vec) TimesTransp(ii, n int, u Vec, c chan int) {
	ul := len(u)
	for i := ii; i < n; i++ {
		var vi float64
		for j := 0; j < ul; j++ {
			vi += u[j] / float64(((j + i) * (j + i + 1) / 2 + j + 1))
		}
		v[i] = vi
	}
	c <- 1
}

func wait(c chan int) {
	for i := 0; i < nCPU; i++ {
		<-c
	}
}

func (v Vec) ATimesTransp(u Vec) {
	x := make(Vec, len(u))
	c := make(chan int, nCPU)
	for i := 0; i < nCPU; i++ {
		go x.Times(i * len(v) / nCPU, (i + 1) * len(v) / nCPU, u, c)
	}
	wait(c)
	for i := 0; i < nCPU; i++ {
		go v.TimesTransp(i * len(v) / nCPU, (i + 1) * len(v) / nCPU, x, c)
	}
	wait(c)
}

func main() {
	start := time.Now()
	flag.Parse()
	if flag.NArg() > 0 {
		n, _ = strconv.Atoi(flag.Arg(0))
	} else {
		n = 5500
	}
	runtime.GOMAXPROCS(nCPU)

	u := make(Vec, n)
	for i := range u {
		u[i] = 1
	}
	v := make(Vec, n)
	for i := 0; i < 10; i++ {
		v.ATimesTransp(u)
		u.ATimesTransp(v)
	}
	var vBv, vv float64
	for i, vi := range v {
		vBv += u[i] * vi
		vv += vi * vi
	}
	fmt.Printf("%0.9f\n", math.Sqrt(vBv / vv))
	elapsed := time.Since(start)
	fmt.Println("Time Elapsed:", elapsed)
}
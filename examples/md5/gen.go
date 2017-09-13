package main

import (
	"bytes"
	"flag"
	"go/format"
	"io/ioutil"
	"log"
	"strconv"
	"strings"
	"text/template"
)

var filename = flag.String("output", "main.go", "output file name")

func main() {
	flag.Parse()

	var buf bytes.Buffer

	t := template.Must(template.New("main").Funcs(funcs).Parse(program))
	if err := t.Execute(&buf, data); err != nil {
		log.Fatal("template", err)
	}

	data, err := format.Source(buf.Bytes())
	if err != nil {
		log.Fatal("format ", err)
	}
	err = ioutil.WriteFile(*filename, data, 0644)
	if err != nil {
		log.Fatal(err)
	}
}

type Data struct {
	tmp, a, b, c, d string
	Shift1          []int
	Shift2          []int
	Shift3          []int
	Shift4          []int
	Table1          []uint32
	Table2          []uint32
	Table3          []uint32
	Table4          []uint32
	Full            bool
}

var funcs = template.FuncMap{
	"bump":    bump,
	"dup":     dup,
	"relabel": relabel,
	"rotate":  rotate,
}

func bump() string {
	i, _ := strconv.Atoi(data.a[2:])
	data.a = strings.Join([]string{data.a[:2], strconv.Itoa(i + 1)}, "")
	return ""
}

func dup(count int, x []int) []int {
	var out []int
	for i := 0; i < count; i++ {
		out = append(out, x...)
	}
	return out
}

func relabel(s string) string {
	return strings.NewReplacer("tmp", data.tmp, "a", data.a, "b", data.b, "c", data.c, "d", data.d).Replace(s)
}

func rotate() string {
	data.a, data.b, data.c, data.d = data.d, data.a, data.b, data.c
	data.tmp = strings.Join([]string{"tmp_", data.a}, "")
	return "" // no output
}

var data = Data{
	tmp:    "tmp_ta0",
	a:      "ta0",
	b:      "tb0",
	c:      "tc0",
	d:      "td0",
	Shift1: []int{7, 12, 17, 22},
	Shift2: []int{5, 9, 14, 20},
	Shift3: []int{4, 11, 16, 23},
	Shift4: []int{6, 10, 15, 21},

	// table[i] = int((1<<32) * abs(sin(i+1 radians))).
	Table1: []uint32{
		// round 1
		0xd76aa478,
		0xe8c7b756,
		0x242070db,
		0xc1bdceee,
		0xf57c0faf,
		0x4787c62a,
		0xa8304613,
		0xfd469501,
		0x698098d8,
		0x8b44f7af,
		0xffff5bb1,
		0x895cd7be,
		0x6b901122,
		0xfd987193,
		0xa679438e,
		0x49b40821,
	},
	Table2: []uint32{
		// round 2
		0xf61e2562,
		0xc040b340,
		0x265e5a51,
		0xe9b6c7aa,
		0xd62f105d,
		0x2441453,
		0xd8a1e681,
		0xe7d3fbc8,
		0x21e1cde6,
		0xc33707d6,
		0xf4d50d87,
		0x455a14ed,
		0xa9e3e905,
		0xfcefa3f8,
		0x676f02d9,
		0x8d2a4c8a,
	},
	Table3: []uint32{
		// round3
		0xfffa3942,
		0x8771f681,
		0x6d9d6122,
		0xfde5380c,
		0xa4beea44,
		0x4bdecfa9,
		0xf6bb4b60,
		0xbebfbc70,
		0x289b7ec6,
		0xeaa127fa,
		0xd4ef3085,
		0x4881d05,
		0xd9d4d039,
		0xe6db99e5,
		0x1fa27cf8,
		0xc4ac5665,
	},
	Table4: []uint32{
		// round 4
		0xf4292244,
		0x432aff97,
		0xab9423a7,
		0xfc93a039,
		0x655b59c3,
		0x8f0ccc92,
		0xffeff47d,
		0x85845dd1,
		0x6fa87e4f,
		0xfe2ce6e0,
		0xa3014314,
		0x4e0811a1,
		0xf7537e82,
		0xbd3af235,
		0x2ad7d2bb,
		0xeb86d391,
	},
}

var program = `
// DO NOT EDIT.
// Generate with: go run gen.go -output main.go

package md5

const Size = 16

type Digest struct {
   s [4]uint32
   len uint64
}

func New() Digest {
     return Digest{s: [4]uint32{0x67452301, 0xEFCDAB89, 0x98BADCFE, 0x10325476}, len: 0}
}

func (dig Digest) Block(X [16]uint32) Digest {
    s := dig.s
	ta0 := s[0]
	tb0 := s[1]
	tc0 := s[2]
	td0 := s[3]

	{{range $i, $s := dup 4 .Shift1}}
  		{{index $.Table1 $i | printf "tmp := ((a + ((c^d)&b)^d) + (X[%d] + %d))" $i | relabel}}{{ bump }}
  		{{printf "a := tmp<<uint8(%d) | tmp>>uint8(32-%d) + b" $s $s | relabel}}
  		{{rotate}}
  	{{end}}


  	// Round 2.
  	{{range $i, $s := dup 4 .Shift2}}
  		{{index $.Table2 $i | printf "tmp := ((a + (b & d) | (c &^ d)) + (X[uint32(1+5*%d)&15] + %d))" $i | relabel}}{{bump}}
  		{{printf "a := tmp<<uint8(%d) | tmp>>uint8(32-%d) + b" $s $s | relabel}}
  		{{rotate}}
  	{{end}}


  	// Round 3.
  	{{range $i, $s := dup 4 .Shift3}}
  		{{index $.Table3 $i | printf "tmp := ((a + (b^c^d)) + (X[uint32(5+3*%d)&15] + %d))" $i | relabel}}{{bump}}
  		{{printf "a := tmp<<uint8(%d) | tmp>>uint8(32-%d) + b" $s $s | relabel}}
  		{{rotate}}
  	{{end}}

  	// Round 4.
  	{{range $i, $s := dup 4 .Shift4}}
  		{{index $.Table4 $i | printf "tmp := ((a + (c^(b|^d))) + (X[uint32(7*%d)&15] + %d))" $i | relabel}}{{bump}}
  		{{printf "a := tmp<<uint8(%d) | tmp>>uint8(32-%d) + b" $s $s | relabel}}
  		{{rotate}}
  	{{end}}



    return Digest {
        s: [4]uint32{
            s[0] + ta16,
            s[1] + tb16,
            s[2] + tc16,
            s[3] + td16,
        },
        len: dig.len + (16 * 4),
    }
}

func (dig Digest) Digest() [4]uint32 {
    return dig.s
}

func (dig Digest) Sum() [Size]byte {
  	var tmp [64]byte

    len := dig.len << 3
    for i := uint(0); i < 8; i++ {
  		tmp[i] = byte(len >> (8 * i))
  	}



}
`

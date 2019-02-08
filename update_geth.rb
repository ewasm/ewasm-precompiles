#!/usr/bin/env ruby

TARGETDIR = "./target/wasm32-unknown-unknown/release"
GETHDIR = "#{ENV["HOME"]}/go/src/github.com/ethereum/go-ethereum/core/vm"

`find #{TARGETDIR}/ewasm_precompile_*.wasm`.each_line do |line|
    if line =~ /#{TARGETDIR}\/ewasm_precompile_(.*)\.wasm/
        data = File.read(TARGETDIR+"/ewasm_precompile_#{$1}.wasm").bytes
        filename = "#{GETHDIR}/ewasm_precompile_#{$1}.go"

        File.open(filename, "w+") do |fd|
            fd.puts "// Copyright 2019 The go-ethereum Authors
// This file is part of the go-ethereum library.
//
// The go-ethereum library is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// The go-ethereum library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with the go-ethereum library. If not, see <http://www.gnu.org/licenses/>.

package vm

var ewasm#{$1.capitalize}Code = []byte{#{data.join(", ")}}"
        end
    end
end
/* <orly/code_gen/filter.cc>

   Implements <orly/code_gen/filter.h>

   Copyright 2010-2014 OrlyAtomics, Inc.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License. */

#include <orly/code_gen/filter.h>

#include <orly/type/seq.h>
#include <orly/type/unwrap.h>

using namespace Orly::CodeGen;

TFilter::TPtr TFilter::New(
    const L0::TPackage *package,
    const Type::TType &ret_type,
    const TInline::TPtr &seq,
    const TFunction::TPtr &func) {
  return TPtr(new TFilter(package, ret_type, seq, func));
}

void TFilter::WriteExpr(TCppPrinter &out) const {
  assert(this);
  assert(&out);
  out << "TFilterGenerator<" << Type::UnwrapSequence(GetReturnType()) << ">::New(";
  Func->WriteName(out);
  out << ", " << Seq << ')';
}

TFilter::TFilter(const L0::TPackage *package,
                 const Type::TType &ret_type,
                 const TInline::TPtr &seq,
                 const TFunction::TPtr &func)
    : TInline(package, ret_type), Func(func), Seq(seq) {}
/* <orly/synth/stmt_block.h>

   TODO

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

#pragma once

#include <functional>
#include <vector>

#include <base/class_traits.h>
#include <orly/orly.package.cst.h>
#include <orly/symbol/stmt/stmt_block.h>
#include <orly/synth/scope_and_def.h>
#include <orly/synth/stmt.h>

namespace Orly {

  namespace Synth {

    /* TODO */
    class TExpr;
    class TExprFactory;

    /* TODO */
    class TStmtBlock {
      NO_COPY(TStmtBlock);
      public:

      typedef std::vector<TStmt *> TStmtVec;

      /* TODO */
      TStmtBlock(const TExprFactory *expr_factory, const Package::Syntax::TStmtBlock *stmt_block);

      /* TODO */
      virtual ~TStmtBlock();

      /* TODO */
      Symbol::Stmt::TStmtBlock::TPtr Build() const;

      /* TODO */
      virtual void ForEachRef(const std::function<void (TAnyRef &)> &cb) const;

      /* Do-little */
      const TStmtVec &GetStmts() const {
        return Stmts;
      };

      private:

      /* TODO */
      void Cleanup();

      /* TODO */
      const Package::Syntax::TStmtBlock *StmtBlock;

      /* TODO */
      TStmtVec Stmts;

    };  // TStmtBlock

  }  // Synth

}  // Orly

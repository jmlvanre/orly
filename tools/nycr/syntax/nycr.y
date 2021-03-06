/* <tools/nycr/syntax/nycr.y>

   This file was generated by nycr. */

%{
#include <tools/nycr/syntax/nycr.cst.h>
using namespace Tools::Nycr::Syntax;
#define YYMAXDEPTH 1000000
#define YYINITDEPTH 1000000
%}

%code {
  int tools_nycr_syntax__lex(YYSTYPE *, YYLTYPE *, void *scanner);
  void tools_nycr_syntax__error(const YYLTYPE *, void*, Tools::Nycr::TContext &, char const *);
}

%defines
%locations
%param{void *scanner}%parse-param {Tools::Nycr::TContextBuilt<TNycr> &ctx}
%define api.pure
%name-prefix "tools_nycr_syntax__"
%glr-parser
%error-verbose
%expect 0
%expect-rr 0

%union {
  TNycr *nycr;
  TOptDeclSeq *opt_decl_seq;
  TNoDeclSeq *no_decl_seq;
  TDeclSeq *decl_seq;
  TDecl *decl;
  TPrecLevel *prec_level;
  TPrecKwd *prec_kwd;
  TName *name;
  TSemi *semi;
  TKind *kind;
  TOper *oper;
  TOptSuper *opt_super;
  TSuper *super;
  TColon *colon;
  TNoSuper *no_super;
  TPattern *pattern;
  TEq *eq;
  TStrLiteral *str_literal;
  TSingleQuotedStrLiteral *single_quoted_str_literal;
  TSingleQuotedRawStrLiteral *single_quoted_raw_str_literal;
  TDoubleQuotedStrLiteral *double_quoted_str_literal;
  TDoubleQuotedRawStrLiteral *double_quoted_raw_str_literal;
  TOptPriLevel *opt_pri_level;
  TPriLevel *pri_level;
  TPriKwd *pri_kwd;
  TIntLiteral *int_literal;
  TNoPriLevel *no_pri_level;
  TAssoc *assoc;
  TRightKwd *right_kwd;
  TNonassocKwd *nonassoc_kwd;
  TLeftKwd *left_kwd;
  TLanguage *language;
  TOptRhs *opt_rhs;
  TRhs *rhs;
  TArrow *arrow;
  TOptMemberSeq *opt_member_seq;
  TNoMemberSeq *no_member_seq;
  TMemberSeq *member_seq;
  TMember *member;
  TNamedMember *named_member;
  TErrorMember *error_member;
  TErrorKwd *error_kwd;
  TAnonymousMember *anonymous_member;
  TOptOperRef *opt_oper_ref;
  TOperRef *oper_ref;
  TNoOperRef *no_oper_ref;
  TNoRhs *no_rhs;
  TEmptyKwd *empty_kwd;
  TOpenAngle *open_angle;
  TOptPath *opt_path;
  TPath *path;
  TOptPathTail *opt_path_tail;
  TPathTail *path_tail;
  TSlash *slash;
  TNoPathTail *no_path_tail;
  TNoPath *no_path;
  TCloseAngle *close_angle;
  TOptExpectedSr *opt_expected_sr;
  TNoExpectedSr *no_expected_sr;
  TExpectedSr *expected_sr;
  TSrKwd *sr_kwd;
  TOptExpectedRr *opt_expected_rr;
  TNoExpectedRr *no_expected_rr;
  TExpectedRr *expected_rr;
  TRrKwd *rr_kwd;
  TRule *rule;
  TKeyword *keyword;
  TBase *base;
  TBadDecl *bad_decl;
}

%type <nycr> Nycr;
%type <opt_decl_seq> OptDeclSeq;
%type <no_decl_seq> NoDeclSeq;
%type <decl_seq> DeclSeq;
%type <decl> Decl;
%type <prec_level> PrecLevel;
%token <prec_kwd> PrecKwd;
%token <name> Name;
%token <semi> Semi;
%type <kind> Kind;
%type <oper> Oper;
%type <opt_super> OptSuper;
%type <super> Super;
%token <colon> Colon;
%type <no_super> NoSuper;
%type <pattern> Pattern;
%token <eq> Eq;
%type <str_literal> StrLiteral;
%token <single_quoted_str_literal> SingleQuotedStrLiteral;
%token <single_quoted_raw_str_literal> SingleQuotedRawStrLiteral;
%token <double_quoted_str_literal> DoubleQuotedStrLiteral;
%token <double_quoted_raw_str_literal> DoubleQuotedRawStrLiteral;
%type <opt_pri_level> OptPriLevel;
%type <pri_level> PriLevel;
%token <pri_kwd> PriKwd;
%token <int_literal> IntLiteral;
%type <no_pri_level> NoPriLevel;
%type <assoc> Assoc;
%token <right_kwd> RightKwd;
%token <nonassoc_kwd> NonassocKwd;
%token <left_kwd> LeftKwd;
%type <language> Language;
%type <opt_rhs> OptRhs;
%type <rhs> Rhs;
%token <arrow> Arrow;
%type <opt_member_seq> OptMemberSeq;
%type <no_member_seq> NoMemberSeq;
%type <member_seq> MemberSeq;
%type <member> Member;
%type <named_member> NamedMember;
%type <error_member> ErrorMember;
%token <error_kwd> ErrorKwd;
%type <anonymous_member> AnonymousMember;
%type <opt_oper_ref> OptOperRef;
%type <oper_ref> OperRef;
%type <no_oper_ref> NoOperRef;
%type <no_rhs> NoRhs;
%token <empty_kwd> EmptyKwd;
%token <open_angle> OpenAngle;
%type <opt_path> OptPath;
%type <path> Path;
%type <opt_path_tail> OptPathTail;
%type <path_tail> PathTail;
%token <slash> Slash;
%type <no_path_tail> NoPathTail;
%type <no_path> NoPath;
%token <close_angle> CloseAngle;
%type <opt_expected_sr> OptExpectedSr;
%type <no_expected_sr> NoExpectedSr;
%type <expected_sr> ExpectedSr;
%token <sr_kwd> SrKwd;
%type <opt_expected_rr> OptExpectedRr;
%type <no_expected_rr> NoExpectedRr;
%type <expected_rr> ExpectedRr;
%token <rr_kwd> RrKwd;
%type <rule> Rule;
%type <keyword> Keyword;
%type <base> Base;
%type <bad_decl> BadDecl;


%destructor { delete $$; } <*>



%start Nycr

%%

Nycr
  : OptDeclSeq {
    $$ = new TNycr(std::unique_ptr<TOptDeclSeq>($1));
    ctx.Set($$);
    $$ = nullptr;
  }
;

OptDeclSeq
  : NoDeclSeq {
    $$ = $1;
  }
  | DeclSeq {
    $$ = $1;
  }
;

NoDeclSeq
  : /* empty */ {
    $$ = new TNoDeclSeq();
  }
;

DeclSeq
  : Decl OptDeclSeq {
    $$ = new TDeclSeq(std::unique_ptr<TDecl>($1), std::unique_ptr<TOptDeclSeq>($2));
  }
;

Decl
  : PrecLevel {
    $$ = $1;
  }
  | Kind {
    $$ = $1;
  }
  | BadDecl {
    $$ = $1;
  }
;

PrecLevel
  : PrecKwd Name Semi {
    $$ = new TPrecLevel(std::unique_ptr<TPrecKwd>($1), std::unique_ptr<TName>($2), std::unique_ptr<TSemi>($3));
  }
;

Kind
  : Oper {
    $$ = $1;
  }
  | Language {
    $$ = $1;
  }
  | Rule {
    $$ = $1;
  }
  | Keyword {
    $$ = $1;
  }
  | Base {
    $$ = $1;
  }
;

Oper
  : Name OptSuper Pattern Name Assoc Semi {
    $$ = new TOper(std::unique_ptr<TName>($1), std::unique_ptr<TOptSuper>($2), std::unique_ptr<TPattern>($3), std::unique_ptr<TName>($4), std::unique_ptr<TAssoc>($5), std::unique_ptr<TSemi>($6));
  }
;

OptSuper
  : Super {
    $$ = $1;
  }
  | NoSuper {
    $$ = $1;
  }
;

Super
  : Colon Name {
    $$ = new TSuper(std::unique_ptr<TColon>($1), std::unique_ptr<TName>($2));
  }
;

NoSuper
  : /* empty */ {
    $$ = new TNoSuper();
  }
;

Pattern
  : Eq StrLiteral OptPriLevel {
    $$ = new TPattern(std::unique_ptr<TEq>($1), std::unique_ptr<TStrLiteral>($2), std::unique_ptr<TOptPriLevel>($3));
  }
;

StrLiteral
  : SingleQuotedStrLiteral {
    $$ = $1;
  }
  | SingleQuotedRawStrLiteral {
    $$ = $1;
  }
  | DoubleQuotedStrLiteral {
    $$ = $1;
  }
  | DoubleQuotedRawStrLiteral {
    $$ = $1;
  }
;

OptPriLevel
  : PriLevel {
    $$ = $1;
  }
  | NoPriLevel {
    $$ = $1;
  }
;

PriLevel
  : PriKwd IntLiteral {
    $$ = new TPriLevel(std::unique_ptr<TPriKwd>($1), std::unique_ptr<TIntLiteral>($2));
  }
;

NoPriLevel
  : /* empty */ {
    $$ = new TNoPriLevel();
  }
;

Assoc
  : RightKwd {
    $$ = $1;
  }
  | NonassocKwd {
    $$ = $1;
  }
  | LeftKwd {
    $$ = $1;
  }
;

Language
  : Name OptSuper OptRhs OpenAngle OptPath CloseAngle OptExpectedSr OptExpectedRr Semi {
    $$ = new TLanguage(std::unique_ptr<TName>($1), std::unique_ptr<TOptSuper>($2), std::unique_ptr<TOptRhs>($3), std::unique_ptr<TOpenAngle>($4), std::unique_ptr<TOptPath>($5), std::unique_ptr<TCloseAngle>($6), std::unique_ptr<TOptExpectedSr>($7), std::unique_ptr<TOptExpectedRr>($8), std::unique_ptr<TSemi>($9));
  }
;

OptRhs
  : Rhs {
    $$ = $1;
  }
  | NoRhs {
    $$ = $1;
  }
;

Rhs
  : Arrow MemberSeq OptOperRef {
    $$ = new TRhs(std::unique_ptr<TArrow>($1), std::unique_ptr<TMemberSeq>($2), std::unique_ptr<TOptOperRef>($3));
  }
;

OptMemberSeq
  : NoMemberSeq {
    $$ = $1;
  }
  | MemberSeq {
    $$ = $1;
  }
;

NoMemberSeq
  : /* empty */ {
    $$ = new TNoMemberSeq();
  }
;

MemberSeq
  : Member OptMemberSeq {
    $$ = new TMemberSeq(std::unique_ptr<TMember>($1), std::unique_ptr<TOptMemberSeq>($2));
  }
;

Member
  : NamedMember {
    $$ = $1;
  }
  | ErrorMember {
    $$ = $1;
  }
  | AnonymousMember {
    $$ = $1;
  }
;

NamedMember
  : Name Colon Name {
    $$ = new TNamedMember(std::unique_ptr<TName>($1), std::unique_ptr<TColon>($2), std::unique_ptr<TName>($3));
  }
;

ErrorMember
  : ErrorKwd {
    $$ = new TErrorMember(std::unique_ptr<TErrorKwd>($1));
  }
;

AnonymousMember
  : Name {
    $$ = new TAnonymousMember(std::unique_ptr<TName>($1));
  }
;

OptOperRef
  : OperRef {
    $$ = $1;
  }
  | NoOperRef {
    $$ = $1;
  }
;

OperRef
  : PrecKwd Name {
    $$ = new TOperRef(std::unique_ptr<TPrecKwd>($1), std::unique_ptr<TName>($2));
  }
;

NoOperRef
  : /* empty */ {
    $$ = new TNoOperRef();
  }
;

NoRhs
  : Arrow EmptyKwd {
    $$ = new TNoRhs(std::unique_ptr<TArrow>($1), std::unique_ptr<TEmptyKwd>($2));
  }
;

OptPath
  : Path {
    $$ = $1;
  }
  | NoPath {
    $$ = $1;
  }
;

Path
  : Name OptPathTail {
    $$ = new TPath(std::unique_ptr<TName>($1), std::unique_ptr<TOptPathTail>($2));
  }
;

OptPathTail
  : PathTail {
    $$ = $1;
  }
  | NoPathTail {
    $$ = $1;
  }
;

PathTail
  : Slash Path {
    $$ = new TPathTail(std::unique_ptr<TSlash>($1), std::unique_ptr<TPath>($2));
  }
;

NoPathTail
  : /* empty */ {
    $$ = new TNoPathTail();
  }
;

NoPath
  : /* empty */ {
    $$ = new TNoPath();
  }
;

OptExpectedSr
  : NoExpectedSr {
    $$ = $1;
  }
  | ExpectedSr {
    $$ = $1;
  }
;

NoExpectedSr
  : /* empty */ {
    $$ = new TNoExpectedSr();
  }
;

ExpectedSr
  : SrKwd IntLiteral {
    $$ = new TExpectedSr(std::unique_ptr<TSrKwd>($1), std::unique_ptr<TIntLiteral>($2));
  }
;

OptExpectedRr
  : NoExpectedRr {
    $$ = $1;
  }
  | ExpectedRr {
    $$ = $1;
  }
;

NoExpectedRr
  : /* empty */ {
    $$ = new TNoExpectedRr();
  }
;

ExpectedRr
  : RrKwd IntLiteral {
    $$ = new TExpectedRr(std::unique_ptr<TRrKwd>($1), std::unique_ptr<TIntLiteral>($2));
  }
;

Rule
  : Name OptSuper OptRhs Semi {
    $$ = new TRule(std::unique_ptr<TName>($1), std::unique_ptr<TOptSuper>($2), std::unique_ptr<TOptRhs>($3), std::unique_ptr<TSemi>($4));
  }
;

Keyword
  : Name OptSuper Pattern Semi {
    $$ = new TKeyword(std::unique_ptr<TName>($1), std::unique_ptr<TOptSuper>($2), std::unique_ptr<TPattern>($3), std::unique_ptr<TSemi>($4));
  }
;

Base
  : Name OptSuper Semi {
    $$ = new TBase(std::unique_ptr<TName>($1), std::unique_ptr<TOptSuper>($2), std::unique_ptr<TSemi>($3));
  }
;

BadDecl
  : error Semi {
    $$ = new TBadDecl(std::unique_ptr<TSemi>($2));
  }
;

%%

void tools_nycr_syntax__error(const YYLTYPE *loc, void*, Tools::Nycr::TContext &ctx, char const *msg) {
  ctx.AddError(Tools::Nycr::TPosRange(Tools::Nycr::TPos(loc->first_line, loc->first_column), Tools::Nycr::TPos(loc->last_line, loc->last_column)), msg);
}

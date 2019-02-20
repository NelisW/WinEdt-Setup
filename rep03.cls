%defrep03.cls
% $Id$
% $HeadURL$

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2006-02-15
% removed references to CSIR and Defencetek
%
% 2005-09-30 CJW
% replaced all refences to Defencetek with CSIR
%
% 2005-09-28 CJW
% replaced Defentek logo with CSIR logo
% locate the CSIRLogo.eps and CSIRLogo.pdf files in the doc root directory
%
% 2005-02-28 JPD
% slightly more vspace at the top of the approval page
% removed whitespace around all frames
%
% 2005-02-05 CJW
% revisions after feedback from Corien - many changes!!
% had to import all of report.cls to get access to details inside
% after the import everything is a bit of a mess - wil clean it out later.
% usage: \documentclass[11pt,a4paper,fleqn,english]{defrep03}[2004/10/08]
% Most of corien's major issues are resolved in this version.
%
% 2005-01-26 CJW
% fixed font selection in headers and footers in front matter
%
% 2005-01-23 CJW
% fixed a bug on page headers, resetting page layout to \pagestyle{DRheadings}
% after any of the frontmatter pages.
% Added \levelssa... to realize lower level numbering below subsections.
%
% 2004-12-21 CJW
% updated to reflect CJC's version 3 Report Style.
%
% 2004-12-21 CJW/JPD SVN version 12
% updated with various JPD inputs defined in SVN file version 11
% this style requires the following packages: pstcol, graphics, graphicx
%
% 2004-10-08 CJW
% first version
%
% This style requires that the basic pack of Postscript fonts be present.
% Palatino is used as the standard serif font, since it matches Book Antiqua very well.
%
% this style requires the following packages (some of which may already be present):
% pstcol, graphics, graphicx
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% useful to take out long blocks of TeX
\long\def\comment#1{}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\def\fileversion{alpha 0.3}%
\def\filedate{2005-02-28}%
\def\defrepfiledate{2005-09-30}%
\ProvidesClass{defrep03}[2005/02/28 a 0.3 deftek report style]

%\LoadClass[11pt,a4paper,fleqn]{report}[1994/12/09]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% The first part of this file is the report file drawn in here, verbatim
%% I edited and removed some of the details to fit the CSIR need.
%% In due time, I will clean this up even more CJW
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%\ProvidesClass{report} [2004/02/16 v1.4f Standard LaTeX document class]
\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagetrue
\newif\if@openright
\if@compatibility\else
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
   {\setlength\paperheight {210mm}%
    \setlength\paperwidth  {148mm}}
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}%
    \setlength\paperwidth  {176mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}
   {\setlength\paperheight {10.5in}%
    \setlength\paperwidth  {7.25in}}
\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}
\fi
\if@compatibility
  \renewcommand\@ptsize{0}
\else
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\fi
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\if@compatibility\else
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\fi
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\if@compatibility\else
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\fi
\DeclareOption{titlepage}{\@titlepagetrue}
\if@compatibility\else
\DeclareOption{notitlepage}{\@titlepagefalse}
\fi
\if@compatibility
\else
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openany}{\@openrightfalse}
\fi
\if@compatibility\else
\DeclareOption{onecolumn}{\@twocolumnfalse}
\fi
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}
\ExecuteOptions{letterpaper,10pt,oneside,onecolumn,final,openany}
\ProcessOptions

\input{size1\@ptsize.clo}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@ \@plus \p@}

\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301

\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}

\newcommand*\chaptermark[1]{}
\setcounter{secnumdepth}{2}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thechapter {\@arabic\c@chapter}
\renewcommand \thesection {\thechapter.\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\newcommand\@chapapp{\chaptername}

\newcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \huge\bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 20\p@
    \fi
    \interlinepenalty\@M
    \Huge \bfseries #1\par\nobreak
    \vskip 40\p@
  }}
\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \Huge \bfseries  #1\par\nobreak
    \vskip 40\p@
  }}
\newcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\Large\bfseries}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\large\bfseries}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries}}

\setlength\leftmargini  {2.5em}
\leftmargin \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\setlength\leftmarginv  {1em}
\setlength\leftmarginvi {1em}
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}

\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}

\newcommand\appendix{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
%\@addtoreset {equation}{chapter}
\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
\newcounter{figure}[chapter]
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreakspace\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}[chapter]
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreakspace\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{2}
\newcommand\tableofcontents{%
      \@restonecolfalse
    \chapter*{\contentsname
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }

\newcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\newcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand*\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}
\newcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename}%
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename}%
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }
\let\l@table\l@figure
\newdimen\bibindent
\setlength\bibindent{1.5em}
\newenvironment{thebibliography}[1]
     {\chapter*{\bibname}%
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \dreflist{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \twocolumn[\@makeschapterhead{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \columnseprule \z@
                \columnsep 35\p@
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}
%\@addtoreset{footnote}{chapter}
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\bibname{Bibliography}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\chaptername{Chapter}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{plain}
\pagenumbering{arabic}
\if@twoside
\else
  \raggedbottom
\fi
\onecolumn
%%
%% End of file `report.cls'.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage{ifthen}
%\usepackage{refrnc}

\usepackage[dvips]{graphics}
\usepackage[dvips]{graphicx}
\usepackage{lastpage}

\ifx\pdfoutput\undefined
\usepackage{pstcol}
\else
\usepackage{eso-pic}
\fi

%uncomment ONE of the following to select a PostScript font:
\usepackage{palatino} % prefered for the CSIR style - close to Book Antiqua
%\usepackage{times}
%\usepackage{bookman}
%\usepackage{newcent}

\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}


\ProcessOptions

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pagenumbering{arabic}
\onecolumn
\raggedbottom
\newlength{\textwidthm}
\newlength{\textwidthmm}
\newlength{\textwidthsafe}
\newlength{\textwidthwide}
\newlength{\oddsidemarginsafe}
\newlength{\oddsidemarginwide}
\newlength{\leftmarginreferences}

\setlength{\belowcaptionskip}{12pt}
\setlength{\abovecaptionskip}{3pt}

\newcommand{\DRPortrait}{
%\pagestyle{DRheadings}
\special{papersize=210mm,297mm}
\setlength{\paperwidth}{210mm}
\setlength{\paperheight}{297mm}
\setlength{\hoffset}{-5mm}  %displacement from physical origin
\setlength{\voffset}{-25mm}
\setlength{\topmargin}{0mm}
\setlength{\headheight}{14.5mm}
\setlength{\headsep}{10mm}
\setlength{\topskip}{2mm}
\setlength{\textheight}{254mm}
\setlength{\footskip}{11mm}
\setlength{\textwidth}{160mm}
\setlength{\textwidthwide}{175mm}
\setlength{\textwidthsafe}{\textwidth}
\setlength{\textwidthm}{157mm}
\setlength{\textwidthmm}{154mm}
\setlength{\oddsidemargin}{5mm}
\setlength{\oddsidemarginsafe}{\oddsidemargin}
\setlength{\oddsidemarginwide}{-2mm}
\setlength{\evensidemargin}{\oddsidemargin}
}

\DRPortrait

\newcommand{\DRLandscape}{
\pagestyle{DRheadingsLS}
\special{papersize=297mm,210mm}
\setlength{\paperwidth}{297mm}
\setlength{\paperheight}{210mm}
\setlength{\hoffset}{-1mm}  %displacement from physical origin
\setlength{\voffset}{-25mm}
\setlength{\topmargin}{2.5mm}
\setlength{\headheight}{12mm}
\setlength{\headsep}{3mm}
\setlength{\topskip}{0mm}
\setlength{\textheight}{155mm}
\setlength{\footskip}{13.5mm}
\setlength{\textwidth}{240mm}
\setlength{\textwidthm}{238mm}
\setlength{\textwidthmm}{236mm}
\setlength{\oddsidemargin}{9mm}
\setlength{\evensidemargin}{\oddsidemargin}
}
\setlength{\leftmarginreferences}{50.0mm}

\setlength{\parindent}{0.0mm}
\setlength{\parskip}{6pt}

\setlength{\mathindent}{15mm}

\setlength{\unitlength}{1mm}

\newlength{\lengthbuf}

\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{1}

%\newcounter{table}[chapter]
%\newcounter{figure}[chapter]
\newcounter{tabledef}
\newcounter{figuredef}

\def\listabbreviationname{Abbreviations}%
\renewcommand\contentsname{CONTENTS}
\renewcommand\listfigurename{FIGURES}
\renewcommand\listtablename{TABLES}
\renewcommand\bibname{References}
\renewcommand\indexname{Index}
\renewcommand\figurename{Figure}
\renewcommand\tablename{Table}

%spacing before and after table text
\newcommand{\tabspacing}{\rule[-6pt]{0mm}{16pt}}
\renewcommand{\arraystretch}{1.5}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\DRexecsumContext}[1]{\renewcommand{\DR@execsumContext}{#1}}
\newcommand{\DR@execsumContext}{}
\@onlypreamble{\DRexecsumContext}

\newcommand{\DRexecsumObjective}[1]{\renewcommand{\DR@execsumObjective}{#1}}
\newcommand{\DR@execsumObjective}{}
\@onlypreamble{\DRexecsumObjective}

\newcommand{\DRexecsumPurpose}[1]{\renewcommand{\DR@execsumPurpose}{#1}}
\newcommand{\DR@execsumPurpose}{}
\@onlypreamble{\DRexecsumPurpose}

\newcommand{\DRexecsumMethodology}[1]{\renewcommand{\DR@execsumMethodology}{#1}}
\newcommand{\DR@execsumMethodology}{}
\@onlypreamble{\DRexecsumMethodology}

\newcommand{\DRexecsumConclusions}[1]{\renewcommand{\DR@execsumConclusions}{#1}}
\newcommand{\DR@execsumConclusions}{}
\@onlypreamble{\DRexecsumConclusions}

\newcommand{\DRexecsumLimitations}[1]{\renewcommand{\DR@execsumLimitations}{#1}}
\newcommand{\DR@execsumLimitations}{}
\@onlypreamble{\DRexecsumLimitations}

\newcommand{\DRexecsumBenefits}[1]{\renewcommand{\DR@execsumBenefits}{#1}}
\newcommand{\DR@execsumBenefits}{}
\@onlypreamble{\DRexecsumBenefits}

\newcommand{\DRexecsumUsage}[1]{\renewcommand{\DR@execsumUsage}{#1}}
\newcommand{\DR@execsumUsage}{}
\@onlypreamble{\DRexecsumUsage}



\newcommand{\DRcontractname}[1]{\renewcommand{\DR@contractname}{#1}}
\newcommand{\DR@contractname}{}
\@onlypreamble{\DRcontractname}

\newcommand{\DRcontractitem}[1]{\renewcommand{\DR@contractitem}{#1}}
\newcommand{\DR@contractitem}{}
\@onlypreamble{\DRcontractitem}

\newcommand{\DRorderno}[1]{\renewcommand{\DR@orderno}{#1}}
\newcommand{\DR@orderno}{}
\@onlypreamble{\DRorderno}

\newcommand{\DRcontractreference}[1]{\renewcommand{\DR@contractreference}{#1}}
\newcommand{\DR@contractreference}{}
\@onlypreamble{\DRcontractreference}

\newcommand{\DRcontractreftext}[1]{\renewcommand{\DR@contractreftext}{#1}}
\newcommand{\DR@contractreftext}{}
\@onlypreamble{\DRcontractreftext}

\newcommand{\DRmilestonetitle}[1]{\renewcommand{\DR@milestonetitle}{#1}}
\newcommand{\DR@milestonetitle}{}
\@onlypreamble{\DRmilestonetitle}

\newcommand{\DRdocdescript}[1]{\renewcommand{\DR@docdescript}{#1}}
\newcommand{\DR@docdescript}{}
\@onlypreamble{\DRdocdescript}

\newcommand{\DRdocECP}[1]{\renewcommand{\DR@docECP}{#1}}
\newcommand{\DR@docECP}{}
\@onlypreamble{\DRdocECP}

\newcommand{\DRintapprovedgroup}[1]{\renewcommand{\DR@intapprovedgroup}{#1}}
\newcommand{\DR@intapprovedgroup}{}
\@onlypreamble{\DRintapprovedgroup}

\newcommand{\DRintapprovedprogram}[1]{\renewcommand{\DR@intapprovedprogram}{#1}}
\newcommand{\DR@intapprovedprogram}{}
\@onlypreamble{\DRintapprovedprogram}

\newcommand{\DRintapprovedsysteme}[1]{\renewcommand{\DR@intapprovedsysteme}{#1}}
\newcommand{\DR@intapprovedsysteme}{}
\@onlypreamble{\DRintapprovedsysteme}

\newcommand{\DRintapprovedproject}[1]{\renewcommand{\DR@intapprovedproject}{#1}}
\newcommand{\DR@intapprovedproject}{}
\@onlypreamble{\DRintapprovedproject}

\newcommand{\DRintapprovedline}[1]{\renewcommand{\DR@intapprovedline}{#1}}
\newcommand{\DR@intapprovedline}{}
\@onlypreamble{\DRintapprovedline}

\newcommand{\DRintapprovedconfig}[1]{\renewcommand{\DR@intapprovedconfig}{#1}}
\newcommand{\DR@intapprovedconfig}{}
\@onlypreamble{\DRintapprovedconfig}

\newcommand{\DRdoctitle}[1]{\renewcommand{\DR@doctitle}{#1}}
\newcommand{\DR@doctitle}{}
\@onlypreamble{\DRdoctitle}

\newcommand{\DRdocRev}[1]{\renewcommand{\DR@docRev}{#1}}
\newcommand{\DR@docRev}{}
\@onlypreamble{\DRdocRev}

\newcommand{\DRdocsynops}[1]{\renewcommand{\DR@docsynops}{#1}}
\newcommand{\DR@docsynops}{}
\@onlypreamble{\DRdocsynops}

\newcommand{\DRdockeywords}[1]{\renewcommand{\DR@dockeywords}{#1}}
\newcommand{\DR@dockeywords}{}
\@onlypreamble{\DRdockeywords}

\newcommand{\DRdocabstract}[1]{\renewcommand{\DR@docabstract}{#1}}
\newcommand{\DR@docabstract}{}
\@onlypreamble{\DRdocabstract}

\newcommand{\DRdocdistribution}[1]{\renewcommand{\DR@docdistribution}{#1}}
\newcommand{\DR@docdistribution}{}
%\@onlypreamble{\DR@docdistribution}

\newcommand{\DRdocpreparedname}[1]{\renewcommand{\DR@docpreparedname}{#1}}
\newcommand{\DR@docpreparedname}{}
\@onlypreamble{\DRdocpreparedname}

\newcommand{\DRdocpreparedfor}[1]{\renewcommand{\DR@docpreparedfor}{#1}}
\newcommand{\DR@docpreparedfor}{}
\@onlypreamble{\DRdocpreparedfor}


\newcommand{\DRdocapproextsign}[1]{\renewcommand{\DR@docapproextsign}{\vbox{#1}}}
\newcommand{\DR@docapproextsign}{\vskip8mm plus2mm minus2mm}
\@onlypreamble{\DRdocapproextsign}

\newcommand{\DRdocapproextname}[1]{\renewcommand{\DR@docapproextname}{\vbox{#1}}}
\newcommand{\DR@docapproextname}{\vskip8mm plus2mm minus2mm}
\@onlypreamble{\DRdocapproextname}

\newcommand{\DRdocapproexttitle}[1]{\renewcommand{\DR@docapproexttitle}{#1}}
\newcommand{\DR@docapproexttitle}{}
\@onlypreamble{\DRdocapproexttitle}


\newcommand{\DRdocapproconfsign}[1]{\renewcommand{\DR@docapproconfsign}{\vbox{#1}}}
\newcommand{\DR@docapproconfsign}{\vskip8mm plus2mm minus2mm}
\@onlypreamble{\DRdocapproconfsign}

\newcommand{\DRdocapprointname}[1]{\renewcommand{\DR@docapprointname}{\vbox{#1}}}
\newcommand{\DR@docapprointname}{\vskip8mm plus2mm minus2mm}
\@onlypreamble{\DRdocapprointname}


\newcommand{\DRdocapprointtitle}[1]{\renewcommand{\DR@docapprointtitle}{#1}}
\newcommand{\DR@docapprointtitle}{}
\@onlypreamble{\DRdocapprointtitle}


\newcommand{\DRdocapproeditsign}[1]{\renewcommand{\DR@docapproeditsign}{\vbox{#1}}}
\newcommand{\DR@docapproeditsign}{\vskip8mm plus2mm minus2mm}
\@onlypreamble{\DRdocapproeditsign}

\newcommand{\DRdocapproextfor}[1]{\renewcommand{\DR@docapproextfor}{\vbox{#1}}}
\newcommand{\DR@docapproextfor}{\vskip8mm plus2mm minus2mm}
\@onlypreamble{\DRdocapproextfor}

\newcommand{\DRdocapprointfor}[1]{\renewcommand{\DR@docapprointfor}{#1}}
\newcommand{\DR@docapprointfor}{}
\@onlypreamble{\DRdocapprointfor}

\newcommand{\DRdocdate}[1]{\renewcommand{\DR@docdate}{#1}}
\newcommand{\DR@docdate}{}
\@onlypreamble{\DRdocdate}

\newcommand{\DRdocmaxpage}[1]{\renewcommand{\DR@docmaxpage}{#1}}
\newcommand{\DR@docmaxpage}{}
%\@onlypreamble{\DRdocmaxpage}
\DRdocmaxpage{\pageref{LastPage}}

\newcommand{\DRdocclass}[1]{\renewcommand{\DR@docclass}{#1}}
\newcommand{\DR@docclass}{}
\@onlypreamble{\DRdocclass}

\newcommand{\DRdocnumber}[1]{\renewcommand{\DR@docnumber}{#1}}
\newcommand{\DR@docnumber}{}
\@onlypreamble{\DRdocnumber}

\newcommand{\DRfileprojno}[1]{\renewcommand{\DR@fileprojno}{#1}}
\newcommand{\DR@fileprojno}{}
\@onlypreamble{\DRfileprojno}

\newcommand{\DRapptitleone}[1]{\renewcommand{\DR@apptitleone}{#1}\renewcommand{\DR@appsepone}{:}}
\newcommand{\DR@apptitleone}{}
\newcommand{\DR@appsepone}{}
\@onlypreamble{\DRapptitleone}

\newcommand{\DRappnameone}[1]{\renewcommand{\DR@appnameone}{#1}}
\newcommand{\DR@appnameone}{}
\@onlypreamble{\DRappnameone}

\newcommand{\DRapptitletwo}[1]{\renewcommand{\DR@apptitletwo}{#1}\renewcommand{\DR@appseptwo}{:}}
\newcommand{\DR@apptitletwo}{}
\newcommand{\DR@appseptwo}{}
\@onlypreamble{\DRapptitletwo}

\newcommand{\DRappnametwo}[1]{\renewcommand{\DR@appnametwo}{#1}}
\newcommand{\DR@appnametwo}{}
\@onlypreamble{\DRappnametwo}

\newcommand{\DRapptitlethree}[1]{\renewcommand{\DR@apptitlethree}{#1}\renewcommand{\DR@appsepthree}{:}}
\newcommand{\DR@apptitlethree}{}
\newcommand{\DR@appsepthree}{}
\@onlypreamble{\DRapptitlethree}

\newcommand{\DRappnamethree}[1]{\renewcommand{\DR@appnamethree}{#1}}
\newcommand{\DR@appnamethree}{}
\@onlypreamble{\DRappnamethree}

\newcommand{\DRapptitlefour}[1]{\renewcommand{\DR@apptitlefour}{#1}\renewcommand{\DR@appsepfour}{:}}
\newcommand{\DR@apptitlefour}{}
\newcommand{\DR@appsepfour}{}
\@onlypreamble{\DRapptitlefour}

\newcommand{\DRappnamefour}[1]{\renewcommand{\DR@appnamefour}{#1}}
\newcommand{\DR@appnamefour}{}
\@onlypreamble{\DRappnamefour}

\newcommand{\DRapptitlefive}[1]{\renewcommand{\DR@apptitlefive}{#1}\renewcommand{\DR@appsepfive}{:}}
\newcommand{\DR@apptitlefive}{}
\newcommand{\DR@appsepfive}{}
\@onlypreamble{\DRapptitlefive}

\newcommand{\DRappnamefive}[1]{\renewcommand{\DR@appnamefive}{#1}}
\newcommand{\DR@appnamefive}{}
\@onlypreamble{\DRappnamefive}

\newcommand{\DRapptitlesix}[1]{\renewcommand{\DR@apptitlesix}{#1}\renewcommand{\DR@appsepsix}{:}}
\newcommand{\DR@apptitlesix}{}
\newcommand{\DR@appsepsix}{}
\@onlypreamble{\DRapptitlesix}

\newcommand{\DRappnamesix}[1]{\renewcommand{\DR@appnamesix}{#1}}
\newcommand{\DR@appnamesix}{}
\@onlypreamble{\DRappnamesix}

\newcommand{\DRapptitleseven}[1]{\renewcommand{\DR@apptitleseven}{#1}\renewcommand{\DR@appsepseven}{:}}
\newcommand{\DR@apptitleseven}{}
\newcommand{\DR@appsepseven}{}
\@onlypreamble{\DRapptitleseven}

\newcommand{\DRappnameseven}[1]{\renewcommand{\DR@appnameseven}{#1}}
\newcommand{\DR@appnameseven}{}
\@onlypreamble{\DRappnameseven}

\newcommand{\DRapptitleeight}[1]{\renewcommand{\DR@apptitleeight}{#1}\renewcommand{\DR@appsepeight}{:}}
\newcommand{\DR@apptitleeight}{}
\newcommand{\DR@appsepeight}{}
\@onlypreamble{\DRapptitleeight}

\newcommand{\DRappnameeight}[1]{\renewcommand{\DR@appnameeight}{#1}}
\newcommand{\DR@appnameeight}{}
\@onlypreamble{\DRappnameeight}

\newcommand{\DRapptitlenine}[1]{\renewcommand{\DR@apptitlenine}{#1}\renewcommand{\DR@appsepnine}{:}}
\newcommand{\DR@apptitlenine}{}
\newcommand{\DR@appsepnine}{}
\@onlypreamble{\DRapptitlenine}

\newcommand{\DRappnamenine}[1]{\renewcommand{\DR@appnamenine}{#1}}
\newcommand{\DR@appnamenine}{}
\@onlypreamble{\DRappnamenine}

\newcommand{\DRapptitleten}[1]{\renewcommand{\DR@apptitleten}{#1}\renewcommand{\DR@appsepten}{:}}
\newcommand{\DR@apptitleten}{}
\newcommand{\DR@appsepten}{}
\@onlypreamble{\DRapptitleten}

\newcommand{\DRappnameten}[1]{\renewcommand{\DR@appnameten}{#1}}
\newcommand{\DR@appnameten}{}
\@onlypreamble{\DRappnameten}

\newcommand{\DRdocontractdetails}[1]{\renewcommand{\DR@docontractdetails}{#1}}
\newcommand{\DR@docontractdetails}{}
\@onlypreamble{\DRdocontractdetails}

\newcommand{\DRdodraftwater}[1]{\renewcommand{\DR@dodraftwater}{#1}}
\newcommand{\DR@dodraftwater}{}
\@onlypreamble{\dodraftwater}

\newcommand{\DRdoappendixnumber}[1]{\renewcommand{\DR@doappendixnumber}{#1}}
\newcommand{\DR@doappendixnumber}{}
\@onlypreamble{\doappendixnumber}

\newcommand{\DRdocexternalprojnumber}[1]{\renewcommand{\DR@docexternalprojnumber}{#1}}
\newcommand{\DR@docexternalprojnumber}{}
\@onlypreamble{\DRdocexternalprojnumber}

\newcommand{\DRdocmoderator}[1]{\renewcommand{\DR@docmoderator}{#1}}
\newcommand{\DR@docmoderator}{}
\@onlypreamble{\DRdocmoderator}

\newcommand{\DRdocfilename}[1]{\renewcommand{\DR@docfilename}{#1}}
\newcommand{\DR@docfilename}{}
\@onlypreamble{\DRdocfilename}

\newcommand{\DRdocfiletype}[1]{\renewcommand{\DR@docfiletype}{#1}}
\newcommand{\DR@docfiletype}{}
\@onlypreamble{\DRdocfiletype}

%\newcommand{\DRdocserialno}[1]{\renewcommand{\DR@docserialno}{#1}}
%\newcommand{\DR@docserialno}{}
%\@onlypreamble{\DRdocserialno}

%\newcommand{\DRdoctype}[1]{\renewcommand{\DR@doctype}{#1}}
%\newcommand{\DR@doctype}{}
%\@onlypreamble{\DRdoctype}



\newdimen\DRdocdistlength \DRdocdistlength =10ex
\newcount\c@KSdocdistributioncnt
\setcounter{KSdocdistributioncnt}{0}
\setlength{\DRdocdistlength}{10ex}

\newsavebox{\DRboxa}
\newsavebox{\DRboxb}
\newsavebox{\DRboxc}
\newsavebox{\DRboxd}
\newsavebox{\DRboxe}
\newsavebox{\DRboxf}
\newsavebox{\DRboxg}

\newcommand{\myslop}{\sloppy\hbadness=10000}
%\newcommand{\myslop}{\sloppy\hbadness=10000\raggedright}


\newcommand{\DRapprovalsheet}{
%\tracingall
\pagestyle{DRapprovalheadings}
\sbox{\DRboxa}{
\begin{minipage}{\textwidth}
\flushleft
\vskip6mm
%\centering{\textbf{ \LARGE \textsf{APPROVAL SHEET}}}
\hspace{77mm}\textbf{ \LARGE \textsf{APPROVAL SHEET}}
\vskip12mm

\parbox[t]{30mm}{\small\textsf{\textbf{Project Name}}}
\parbox[t]{120mm}{\small\textsf{\DR@contractname}}\hfill\\
\vskip3mm plus3mm minus3mm

\parbox[t]{30mm}{\small\textsf{\textbf{Title}}}
\parbox[t]{120mm}{\small\textsf{\DR@doctitle}}\hfill\\
\vskip3mm plus3mm minus3mm

\parbox[t]{30mm}{\small\textsf{\textbf{Prepared for}}}
\parbox[t]{120mm}{\small\textsf{\DR@docpreparedfor}}\hfill\\
\vskip3mm plus3mm minus3mm

\parbox[t]{30mm}{\small\textsf{\textbf{By}}}
\parbox[t]{42mm}{\small\textsf{\DR@docpreparedname}}
\parbox[t]{48mm}{\small\textsf{\textbf{Signature}}}
\parbox[t]{28mm}{\small\textsf{\textbf{Date}}}\\
\vskip3mm plus3mm minus3mm

\parbox[t]{30mm}{\small\textsf{\textbf{Moderator}}}
\parbox[t]{42mm}{\small\textsf{\DR@docmoderator}}
\parbox[t]{48mm}{\small\textsf{\textbf{Signature}}}
\parbox[t]{28mm}{\small\textsf{\textbf{Date}}}\\

\vskip3mm plus3mm minus3mm

\parbox[t]{30mm}{\small\textsf{\textbf{Project No}}}
\parbox[t]{120mm}{\small\textsf{\DR@fileprojno}}\hfill\\

\vskip3mm plus3mm minus3mm

\parbox[t]{30mm}{\small\textsf{\textbf{Ext Project No}}}
\parbox[t]{120mm}{\small\textsf{\DR@docexternalprojnumber}}\hfill\\

\vskip3mm plus3mm minus3mm

\parbox[t]{30mm}{\small\textsf{\textbf{Approved for}}}
\parbox[t]{120mm}{\small\textsf{\DR@docapprointfor}}\hfill\\
\vskip3mm plus3mm minus3mm

\parbox[t]{30mm}{\small\textsf{\textbf{By}}}
\parbox[t]{42mm}{\small\textsf{\DR@docapprointname}}
\parbox[t]{48mm}{\small\textsf{\textbf{Signature}}}
\parbox[t]{28mm}{\small\textsf{\textbf{Date}}}\\
\vskip3mm plus3mm minus3mm

\parbox[t]{30mm}{\small\textsf{\textbf{Designation}}}
\parbox[t]{120mm}{\small\textsf{\DR@docapprointtitle}}\hfill\\
\vskip3mm plus3mm minus3mm

\parbox[t]{30mm}{\small\textsf{\textbf{Approved for}}}
\parbox[t]{120mm}{\small\textsf{\DR@docapproextfor}}\hfill\\
\vskip3mm plus3mm minus3mm

\parbox[t]{30mm}{\small\textsf{\textbf{By}}}
\parbox[t]{42mm}{\small\textsf{\DR@docapproextname}}
\parbox[t]{48mm}{\small\textsf{\textbf{Signature}}}
\parbox[t]{28mm}{\small\textsf{\textbf{Date}}}\\
\vskip3mm plus3mm minus3mm

\parbox[t]{30mm}{\small\textsf{\textbf{Designation}}}
\parbox[t]{120mm}{\small\textsf{\DR@docapproexttitle}}\hfill\\
%\vspace{3mm}
\end{minipage}
}

\sbox{\DRboxg}{
%\begin{minipage}[t]{90mm}
\hspace{-3.5mm}\textsf{\small\DR@docdistribution}
%\end{minipage}
}

%\dimen1=68mm
%\message{dimen1= \number\dimen1}
%\advance\dimen1 by - \ht\DRboxg
%\vspace{\dimen1}
%\message{distribution height= \number\ht\DRboxg}
%\message{dimen1= \number\dimen1}


\sbox{\DRboxb}{
\begin{minipage}{\textwidth}
\vskip1.0mm plus3mm minus3mm
%\rule[-0mm]{\textwidth}{0.025cm}
\vskip3mm plus3mm minus3mm
%\hspace{0.5mm}
\parbox[t]{30mm}{\small\textsf{\textbf{Distribution List}}}\\
\hspace{0.5mm}
\parbox[t]{30mm}{\ }
\parbox[t]{120mm}{\usebox{\DRboxg}}\hfill\\
\end{minipage}
%\hfill
}

\sbox{\DRboxc}{
\begin{minipage}{\textwidth}
\vskip1.5mm plus3mm minus3mm
\rule[-0mm]{\textwidth}{0.025cm}
\vskip3mm plus3mm minus3mm
\hspace{0.5mm}
\parbox[t]{30mm}{\small\textsf{\textbf{Keywords}}}
%\parbox[t]{120mm}{\small\textsf{\DR@dockeywords}}\hfill\\
\end{minipage}
}

\sbox{\DRboxd}{
\begin{minipage}{\textwidth}
\usebox{\DRboxa}\\\nopagebreak[4]\newline
\usebox{\DRboxb}\\\nopagebreak[4]
\vfill
%\usebox{\DRboxc}\\% keywords not used anymore
\end{minipage}
}

\sbox{\DRboxe}{
\begin{minipage}[t]{\textwidthmm}
\myslop
\vskip1.5mm plus3mm minus3mm
\rule[-0mm]{\textwidth}{0.025cm}
\vskip3mm plus3mm minus3mm
\parbox[t]{30mm}{\textsf{\textbf{Distribution List}}}
\begin{minipage}[t]{90mm}
\textsf{See distribution on next page}
\vspace{110mm}\end{minipage}
\hfill
\end{minipage}
\hfill
}


\sbox{\DRboxf}{
\begin{minipage}{\textwidthm}
\myslop
\usebox{\DRboxa}\\\nopagebreak[4]
\usebox{\DRboxe}\\\nopagebreak[4]
%\usebox{\DRboxc}\\
\end{minipage}
}


\ifdim 2\ht\DRboxf > \textheight
\typeout{Approval Page too long: reduce the text somewhere}
\message{textheight= \number\textheight}
\message{title and abstract= \number \ht\DRboxa}
\message{distribution  block= \number \ht\DRboxb}
\message{approval block= \number \ht\DRboxc}
\message{page with distribution= \number \ht\DRboxd}
%\message{boxe \number \ht\DRboxe}
\message{page without distribution= \number \ht\DRboxf}
\fi


\ifdim 2\ht\DRboxd < \textheight
\typeout{Distribution list on Approval Page}
\usebox{\DRboxd}
%\vspace*{5\ht\DRboxd}
\vfill
\eject
\else
\typeout{Distribution list on Distribution Page}
\usebox{\DRboxf}
\vfill \eject
\DRdistributionpage
\vfill \eject
\fi

\fussy  \hbadness=1000
\setlength{\textwidth}{\textwidthsafe}
\setlength{\oddsidemargin}{\oddsidemarginsafe}
\setlength{\evensidemargin}{\oddsidemarginsafe}
\pagestyle{DRheadings}
}


\newcommand{\DRdistributionpage}{
\vspace*{10mm}
\begin{center} \textbf{ \Large   \textsf{DISTRIBUTION}} \end{center}
\vspace*{5mm}
\begin{minipage}{\textwidthmm}
\textsf{
\DR@docdistribution
}
\end{minipage}

}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
\newcommand{\DRcoverpage}{
\pagestyle{DRcoverheadings}
\setcounter{page}{0}
\sloppy
\begin{center}
\begin{minipage}[c]{90mm}
{\centering
\vspace*{157mm}
\textbf{\textsf{\small\DR@docnumber}}\ \textbf{\textsf{\small Rev \DR@docRev}}\\
%\vspace*{3mm}
\ifthenelse{\equal{\DR@docontractdetails}{true}}%
{% true section
\textbf{\textsf{\small Order \DR@orderno,}}\ \
\textbf{\textsf{\small Item \DR@contractitem,}}\ \
\textbf{\textsf{\small \DR@contractreftext\  \DR@contractreference}}
\\\vspace*{3mm}
\textbf{ \textsf{\DR@contractname} }\\
}
{% false section
\vspace{8mm}
}
%\vspace*{3mm}
\textbf{ \textsf{\Large   \DR@doctitle} }

\vspace*{3mm}
\textbf{\textsf{\small by \DR@docpreparedname}}

\vspace*{3mm}
\textbf{\textsf{\small \DR@docdate}}
\\}
\end{minipage}
\end{center}
%\flushleft

\vspace*{0mm}
\vfill
%\flushleft
{\small\copyright\ \textsf{C J Willers}}
\fussy
\eject
\pagestyle{DRheadings}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
\newcommand{\DRdocchangehistory}{
\pagestyle{DRheadingssans}
\setlength{\unitlength}{1mm}
%\sloppy
\begin{center}
%\begin{minipage}[c]{130mm}
\begin{tabular}{|p{26mm}|p{21mm}|p{28mm}|p{70mm}|}
\hline
\multicolumn{2}{|c|}{{\begin{minipage}{35mm}{\vspace{-6pt}
%\includegraphics[scale=0.13]{CSIRLogo}
}
\end{minipage}}} &
\multicolumn{2}{c|}{\Large\textsf{\textbf{\rule[-5mm]{0mm}{14mm}DOCUMENT CHANGE HISTORY}}} \\
\hline
\setlength{\unitlength}{1mm}
\makebox(26,10){\textbf{\textsf{\begin{minipage}[c]{20mm}\centering \rule{0mm}{9mm} Change Control No\rule[-4mm]{0mm}{6mm}\end{minipage}}}} &
\makebox(21,9){\rule[-2mm]{0mm}{0mm}\vspace{-4mm}\textbf{\textsf{Date}}} &
\makebox(28,9){\rule[-2mm]{0mm}{0mm}\vspace{-4mm}\textbf{\textsf{Name}}} &
\makebox(70,9){\rule[-2mm]{0mm}{0mm}\vspace{-4mm}\textbf{\textsf{Description}}}\\
\hline
\multicolumn{4}{|c|}{\textsf{\textbf{\rule[-3mm]{0mm}{9mm}This page will only be updated starting from: Rev 2}}} \\
\hline
%\input{RevHistory}
\end{tabular}
%\end{minipage}
\end{center}
%\flushleft
\fussy
\vfill
\vspace{-4mm}
\parbox[t]{20mm}{\footnotesize \textsf{\textbf{Filename}}}
\parbox[t]{127mm}{\footnotesize \textsf{\DR@docfilename}}\hfill\\
\parbox[t]{20mm}{\footnotesize \textsf{\textbf{Software}}}
\parbox[t]{127mm}{\footnotesize \textsf{\DR@docfiletype Version \defrepfiledate}}\hfill\\
%\vspace{-4mm}
%\clearpage
\eject
\pagestyle{DRheadings}
}





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%cover page frame
\newcommand{\DRcoverframe}{
\begin{picture}(0,0)
%\put(-1,-25){\resizebox{46mm}{!}{\includegraphics[angle=0]{CSIRLogo}}}
\ifthenelse{\equal{\DR@dodraftwater}{true}}%
{\put(80,-130){\makebox(0,0){\rotatebox{45}{\textcolor[gray]{0.85}{\fontsize{6cm}{6cm}\selectfont{\textsf{DRAFT}}}}}}}{}
\end{picture}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%front matter frame
\newcommand{\DRfrontframe}{\begin{picture}(0,0)
%\put(0,-25){\resizebox{46mm}{!}{\includegraphics[angle=0]{CSIRLogo}}}
\ifthenelse{\equal{\DR@dodraftwater}{true}}%
{\put(80,-130){\makebox(0,0){\rotatebox{45}{\textcolor[gray]{0.85}{\fontsize{6cm}{6cm}\selectfont{\textsf{DRAFT}}}}}}}{}
\end{picture}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%cover page headings

\newcommand{\ps@DRcoverheadings}{
\renewcommand{\@oddhead}{\DRcoverframe
\begin{minipage}[c]{\textwidthmm}
\centering
{\footnotesize \makebox(0,0)[c]{\textsf{\scshape{\DR@docclass}}}}
\end{minipage}
\hfill}
\renewcommand{\@evenhead}{\@oddhead}
\renewcommand{\@oddfoot}{
\begin{minipage}[c]{\textwidthmm}
\centering
{\footnotesize \makebox(0,0)[c]{\textsf{\scshape{\DR@docclass}}}}
\end{minipage}
\hfill}
\renewcommand{\@evenfoot}{\@oddfoot}
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%normal page headings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\DRportframe}{\begin{picture}(0,0)
\ifthenelse{\equal{\DR@dodraftwater}{true}}%
{\put(80,-130){\makebox(0,0){\rotatebox{45}{\textcolor[gray]{0.85}{\fontsize{6cm}{6cm}\selectfont{\textsf{DRAFT}}}}}}}{}
\end{picture}}

\newcommand{\DRlandframe}{\begin{picture}(0,0)
\ifthenelse{\equal{\DR@dodraftwater}{true}}%
{\put(80,-130){\makebox(0,0){\rotatebox{45}{\textcolor[gray]{0.85}{\fontsize{6cm}{6cm}\selectfont{\textsf{DRAFT}}}}}}}{}
\end{picture}}

%%%%%%%%%%%%%%%%%%%
% normal page headings: roman
\newcommand{\ps@DRheadings}{
\renewcommand{\@oddhead}{\DRportframe
\begin{minipage}{\textwidth}
{\hfill{\footnotesize \scshape{\DR@docclass}}\hfill} \\
\footnotesize\DR@docnumber\ Rev \DR@docRev
\hfill%
\hfill {\footnotesize Page \thepage\ of \DR@docmaxpage}
\end{minipage}
}
\renewcommand{\@evenhead}{\@oddhead}
%
\renewcommand{\@oddfoot}{%
%\hfill {\textsf{\scshape{\DR@docclass}}} \hfill}
\hfill {\footnotesize \scshape{\DR@docclass}} \hfill}
\renewcommand{\@evenfoot}{\@oddfoot}
}

\newcommand{\ps@DRheadingsLS}{
\renewcommand{\@oddfoot}{%
\hfill {\footnotesize \textsf{\scshape{\DR@docclass}}} \hfill}
\renewcommand{\@evenfoot}{\@oddfoot}
\renewcommand{\@oddhead}{\DRportframe
\textsf{\footnotesize \hspace*{0.0mm}{Rev \DR@docRev }
\hfill {\scshape\DR@docclass}%
\hfill {Page \thepage\ of \DR@docmaxpage}}}
\renewcommand{\@evenhead}{\@oddhead}
}


%%%%%%%%%%%%%%%%%%%
% normal page headings: sansserif
\newcommand{\ps@DRheadingssans}{
\renewcommand{\@oddhead}{\DRportframe
\begin{minipage}{\textwidth}
{\ \hfill \footnotesize \textsf{\scshape{\DR@docclass}} \hfill\ }\\
\textsf{\footnotesize \DR@docnumber\ Rev \DR@docRev}
\hfill%
\hfill \textsf{\footnotesize {Page \thepage\ of \DR@docmaxpage}}%
\end{minipage}
}
\renewcommand{\@evenhead}{\@oddhead}
%
\renewcommand{\@oddfoot}{%
\hfill {\footnotesize \textsf{\scshape{\DR@docclass}}} \hfill}
\renewcommand{\@evenfoot}{\@oddfoot}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%front matter page headings: sansserif

\newcommand{\ps@DRfrontheadings}{
\renewcommand{\@oddhead}{\DRfrontframe
\begin{minipage}{\textwidth}
{\footnotesize \hfill\textsf{\scshape{\textsf\DR@docclass}} \hfill} \\
%\textsf{\DR@docnumber\ Rev \DR@docRev} % not to be on front matter pages
\hspace*{137mm}
\textsf{\footnotesize{Page \thepage\ of \DR@docmaxpage}}
\end{minipage}
}
\renewcommand{\@evenhead}{\@oddhead}
%
\renewcommand{\@oddfoot}{%
\hfill {\footnotesize \textsf{\scshape{\DR@docclass}}} \hfill}
\renewcommand{\@evenfoot}{\@oddfoot}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%approval page headings: sansserif

\newcommand{\ps@DRapprovalheadings}{
\renewcommand{\@oddhead}{\DRapprovalframe
\begin{minipage}{\textwidth}
{\footnotesize \hfill\textsf{\scshape{\DR@docclass}} \hfill} \\
\textsf{\footnotesize \DR@docnumber\ Rev \DR@docRev} \hfill %\hspace*{37mm}
\textsf{\footnotesize{Page \thepage\ of \DR@docmaxpage}}
\end{minipage}
}
\renewcommand{\@evenhead}{\@oddhead}
%
\renewcommand{\@oddfoot}{%
\hfill {\footnotesize \textsf{\scshape{\DR@docclass}}} \hfill}
\renewcommand{\@evenfoot}{\@oddfoot}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%front matter frame
\newcommand{\DRapprovalframe}{\begin{picture}(0,0)
%\put(0,-25){\resizebox{46mm}{!}{\includegraphics[angle=0]{CSIRLogo}}}
\linethickness{1.5mm}
\thicklines
\put(-3,-7.5){\line(1,0){165}}
\put(-3,-27){\line(1,0){165}}
%\put(-3,-252){\line(1,0){165}}
\put(-3,-265){\line(1,0){165}}
\put(51,-27){\line(0,1){19.5}}
\put(-3,-265){\line(0,1){257.5}}
\put(162,-265){\line(0,1){257.5}}
%\put(108.42,-3){\line(0,1){10}}
%\put(48.68,-263.07){\line(0,1){10}}
%\put(108.42,-263.07){\line(0,1){10}}
%\put(-11.07,-3){\line(0,-1){260.1}}
%\put(164.7,-3){\line(0,-1){260.1}}
\linethickness{0.3mm}

\ifthenelse{\equal{\DR@dodraftwater}{true}}%
{\put(80,-130){\makebox(0,0){\rotatebox{45}{\textcolor[gray]{0.85}{\fontsize{6cm}{6cm}\selectfont{\textsf{DRAFT}}}}}}}{}
\end{picture}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%always use the page frame, therefore re-define plain and empty
\renewcommand{\ps@plain}{\ps@DRheadings}
\renewcommand{\ps@empty}{\ps@DRheadings}

\pagestyle{DRheadings}





\def\today{\ifcase\month\or
January\or February\or March\or April\or May\or June\or
July\or August\or September\or October\or November\or December\fi
\space\number\day, \number\year}

%\@addtoreset{equation}{chapter}
%\def\theequation{\thechapter.\arabic{equation}}
\def\theequation{\arabic{equation}}



%---------------------------------------------------------
% do the chapter page layout

%include the independent page numbering for appendices
\newcounter{KSnowappendix}
\setcounter{KSnowappendix}{0}

\renewcommand{\chapter}{\clearpage
\ifnum \c@KSnowappendix = 0
\DRdocmaxpage{\pageref{LastPage}}
\fi
\ifnum \c@KSnowappendix = 1
%\addcontentsline{toc}{apphead}{Appendices}
%\addtocontents{toc}{\protect\addvspace{10\p@}}%
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPagea}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 2
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPageb}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 3
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPagec}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 4
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPaged}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 5
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPagee}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 6
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPagef}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 7
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPageg}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 8
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPageh}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 9
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPagei}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 10
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPagej}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 11
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPagek}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 12
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPagel}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 13
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPagem}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 14
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPagen}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 15
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPageo}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 16
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPagep}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 17
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPageq}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 18
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPager}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 19
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPages}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 20
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPaget}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 21
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPageu}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 22
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPagev}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 23
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPagew}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 24
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPagex}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 25
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPagey}}
\setcounter{page}{1}}{}
\fi
\ifnum \c@KSnowappendix = 26
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\DRdocmaxpage{\pageref{LastPagez}}
\setcounter{page}{1}}{}
\fi
% add some more in here if you need to.
\ifnum \c@KSnowappendix > 0
\stepcounter{KSnowappendix}
\fi
%\pagestyle{myheadings}
\global\@topnum\z@
\@afterindentfalse
\secdef\@chapter\@schapter}


\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
       \refstepcounter{chapter}%
       \typeout{Doing \@chapapp\space\thechapter...}%
           \ifnum \c@KSnowappendix > 0
                \addcontentsline{toc}{chapter}{\protect\numberline{Appendix \thechapter}\hspace{20mm}#1}%
           \else
                \addcontentsline{toc}{chapter}{\protect\numberline{\thechapter}#1}%
           \fi
        \else
           \addcontentsline{toc}{chapter}{#1}%
        \fi
        \chaptermark{#1}%
        \@makechapterhead{#2}%
        \@afterheading
        }


\def\@schapter#1{
    \@makeschapterhead{#1}%
    \@afterheading
}

%---------------------------------------------------------------

\renewcommand{\appendix}{\par
\clearpage
\setcounter{chapter}{0}
\setcounter{section}{0}
\setcounter{KSnowappendix}{1}
\def\@chapapp{}
\def\thechapter{\Alph{chapter}}
\ifthenelse{\equal{\DR@doappendixnumber}{true}}
{\gdef\thepage{\thechapter\arabic{page}}}
{\gdef\thepage{\arabic{page}}}
}

%---------------------------------------------------------------
% lower level section headings
% initially: removed bfseries for Kentron reports. you may want to put it back
% later: put back bfseries and added sf font (as does CCvL)

\renewcommand*\l@section{\@dottedtocline{1}{0em}{2.3em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{0em}{3.2em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{0em}{4.1em}}
\renewcommand*\l@paragraph{\@dottedtocline{4}{0em}{5em}}
\renewcommand*\l@subparagraph{\@dottedtocline{5}{0em}{6em}}
\renewcommand*\l@figure{\@dottedtocline{1}{1.5em}{5em}}
\renewcommand*\l@table{\@dottedtocline{1}{1.5em}{4.5em}}

% new font sizes for deftek report
\def\@xvpt{15.79}
\newcommand\LARGECHAP{\@setfontsize\LARGECHAP\@xvpt{19}}
\def\@xiiipt{13.16}
\newcommand\largeSSec{\@setfontsize\largeSSec\@xiiipt{17}}


%-----------------------------
% normal chapter
\renewcommand{\@makechapterhead}[1]{
  \vspace*{3\p@}%
  {\parindent \z@ %\raggedright
  \reset@font
\ifnum \c@KSnowappendix > 0
        \LARGECHAP\bfseries Appendix \thechapter\hskip 6mm #1
\else
        \LARGECHAP\bfseries \thechapter\hskip 6mm #1
\fi
    \par\nobreak
    \vskip 6\p@
  }
}

% star chapter - no number
\renewcommand{\@makeschapterhead}[1]{
  \vspace*{3\p@}%
  {\parindent \z@ %\raggedright
  \reset@font
        \LARGECHAP\bfseries #1
    \par\nobreak
    \vskip 6\p@
  }
}

% this thing here defines the space between the section number and the section text
\def\@seccntformat#1{\csname the#1\endcsname \hskip1.5em}

\renewcommand{\section}{\@startsection %
                                    {section}             % type/level
                                    {1}                   % secnumdepth
                                    {\z@}                 % indent hspace before the number
                                   {-3.5ex \@plus -1ex \@minus -.2ex} %space before heading
                                   {0.1ex \@plus 0.0ex}               %space after heading
                                   {\reset@font\Large\bfseries}}  % heading style
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {0.1ex \@plus 0.0ex}%
                                     {\reset@font\largeSSec\bfseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {0.1ex \@plus .0ex}%
                                     {\reset@font\large\bfseries}}
\renewcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {0.1ex \@plus .0ex}%
                                    {\reset@font\normalsize\bfseries}}
\renewcommand{\subparagraph}{\@startsection{subparagraph}{5}{\parindent}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {0.1ex \@plus .0ex}%
                                      {\reset@font\normalsize\bfseries}}



%----------------------------------------------------------------------------
%do not require the word "Chapter" in heading
\renewcommand{\@chapapp}{}


%----------------------------------------------------------------------------
%table of contents

\renewcommand{\@pnumwidth}{2.em}
\renewcommand{\@tocrmarg} {2.55em}
%\renewcommand{\@dotsep}{4.5}
\renewcommand{\@dotsep}{1000}

%TOC redefined for smalller parskip and different style
\renewcommand{\tableofcontents}{%
    \chapter*{\contentsname\@mkboth{}{}}%
    \setlength{\parskip}{1pt}%
    \@starttoc{toc}%
    \setlength{\parskip}{6pt}
    }


\renewcommand*{\l@chapter}[2]{%
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
%      \leavevmode \scshape
      \advance\leftskip\@tempdima
      \hskip -\leftskip
%      #1\nobreak
       #1\nobreak%\leaders\hbox{$\m@th \mkern \@dotsep mu.\mkern \@dotsep mu$}
      \hfil \nobreak\hbox to\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
     }


\newcommand*{\l@apphead}[2]{%
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
       #1\nobreak
      \hfil \nobreak\hbox to\@pnumwidth{\hss }\par
      \penalty\@highpenalty
    \endgroup
     }

%--------------------------------------------------------------------

%LOF redefined for smalller parskip
\renewcommand{\listoffigures}{%
    \chapter*{\listfigurename\@mkboth{}{}}%
%    \addtocontents{toc}{\contentsline {chapter}{\numberline {}Figures}{\thepage}}
    \addtocontents{toc}{\contentsline {chapter}{\numberline {Figures}}{\thepage}}
    \setlength{\parskip}{3pt}%
    \@starttoc{lof}%
   \setlength{\parskip}{6pt}
    }



\renewcommand{\listoftables}{%
    \chapter*{\listtablename\@mkboth{}{}}%
%    \addtocontents{toc}{\contentsline {chapter}{\numberline {}Tables}{\thepage}}
    \addtocontents{toc}{\contentsline {chapter}{\numberline {Tables}}{\thepage}}
    \setlength{\parskip}{3pt}%
    \@starttoc{lot}%
    \setlength{\parskip}{6pt}
    }

\renewcommand \thefigure
    {\@arabic\c@figuredef}
%    {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}

\renewcommand \thetable
    {\@arabic\c@tabledef}
%    {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}

%--------------------------------------------------------------------
%locate list at the left edge of the page.
% the 5.3em provides space for the left column.
\renewcommand*\l@figure{\@dottedtocline{1}{0em}{5.3em}}
\renewcommand*\l@table{\@dottedtocline{1}{0em}{5.3em}}


%----------------------------------------------------------------------------
%make enumerate as 1 1.1 1.1.1 1.1.1.1 etc

%\renewcommand{\labelenumi}{\arabic{enumi}}
%\renewcommand{\labelenumii}{\arabic{enumi}.\arabic{enumii}}
%\renewcommand{\labelenumiii}{\arabic{enumi}.\arabic{enumii}.\arabic{enumiii}}
%\renewcommand{\labelenumiv}{\arabic{enumi}.\arabic{enumii}.\arabic{enumiii}.\arabic{enumiv}}
%\renewcommand{\p@enumii}{\arabic{enumi}}
%\renewcommand{\p@enumiii}{\arabic{enumi}.\arabic{enumii}}
%\renewcommand{\p@enumiv}{\arabic{enumi}.\arabic{enumii}.\arabic{enumiii}}

\renewcommand{\labelenumi}{\alph{enumi})}
\renewcommand{\labelenumii}{\roman{enumii})}
\renewcommand{\labelenumiii}{$\bullet$}
\renewcommand{\labelenumiv}{$\bullet$}

\renewcommand{\labelitemi}{$\bullet$}
\renewcommand{\labelitemii}{$\bullet$}
\renewcommand{\labelitemiii}{$\bullet$}
\renewcommand{\labelitemiv}{$\bullet$}

\renewcommand*\descriptionlabel[1]{\hspace\labelsep$\bullet$\hspace\labelsep
                                \normalfont\bfseries #1}

%----------------------------------------------------------------------------
%make new level command  as x.1 x.1.1 x.1.1.1 x.1.1.1.1 etc where x is section, subsection of subsubsection

\newcommand{\nparsetlevel}{
\setlength{\labelwidth}{23mm}
\setlength{\leftmargin}{23mm}
\setlength{\leftmargini}{30mm}
\setlength{\leftmarginii}{0mm}
\setlength{\leftmarginiii}{0mm}
\setlength{\leftmarginiv}{0mm}
\setlength{\leftmarginv}{0mm}
\setlength{\leftmarginvi}{0mm}
\setlength{\rightmargin}{0mm}
\setlength{\labelsep}{0mm}
\setlength{\topsep}{0mm}
\setlength{\itemsep}{0mm}
}


\newcounter{leva}
\newcounter{levb}
\newcounter{levc}
\newcounter{levd}
\newcounter{leve}
\newenvironment{levela}{\setlength{\leftmargini}{23mm}\begin{list}{\thesection.\theleva\hfill}{\usecounter{leva}}\nparsetlevel}{\end{list}}
\newenvironment{levelb}{\begin{list}{\thesection.\theleva.\thelevb\hfill}{\usecounter{levb}}\nparsetlevel}{\end{list}}
\newenvironment{levelc}{\begin{list}{\thesection.\theleva.\thelevb.\thelevc\hfill}{\usecounter{levc}}\nparsetlevel}{\end{list}}
\newenvironment{leveld}{\begin{list}{\thesection.\theleva.\thelevb.\thelevc.\thelevd\hfill}{\usecounter{levd}}\nparsetlevel}{\end{list}}
\newenvironment{levele}{\begin{list}{\thesection.\theleva.\thelevb.\thelevc.\thelevd.\theleve\hfill}{\usecounter{leve}}\nparsetlevel}{\end{list}}

\newcommand{\nparsetlevels}{
\setlength{\labelwidth}{25mm}
\setlength{\leftmargini}{25mm}
\setlength{\leftmarginii}{0mm}
\setlength{\leftmarginiii}{0mm}
\setlength{\leftmarginiv}{0mm}
\setlength{\leftmarginv}{0mm}
\setlength{\leftmarginvi}{0mm}
\setlength{\rightmargin}{0mm}
\setlength{\labelsep}{0mm}
\setlength{\topsep}{0mm}
\setlength{\partopsep}{0mm}
\setlength{\itemsep}{0mm}
}

\newcounter{levsa}
\newcounter{levsb}
\newcounter{levsc}
\newcounter{levsd}
\newcounter{levse}
\newenvironment{levelsa}{\setlength{\leftmargini}{25mm}\begin{list}{\thesubsection.\thelevsa\hfill}{\usecounter{levsa}}\setlength{\leftmargini}{23mm}\nparsetlevels}{\end{list}}
\newenvironment{levelsb}{\begin{list}{\thesubsection.\thelevsa.\thelevsb\hfill}{\usecounter{levsb}}\nparsetlevels}{\end{list}}
\newenvironment{levelsc}{\begin{list}{\thesubsection.\thelevsa.\thelevsb.\thelevsc\hfill}{\usecounter{levsc}}\nparsetlevels}{\end{list}}
\newenvironment{levelsd}{\begin{list}{\thesubsection.\thelevsa.\thelevsb.\thelevsc.\thelevsd\hfill}{\usecounter{levsd}}\nparsetlevels}{\end{list}}
\newenvironment{levelse}{\begin{list}{\thesubsection.\thelevsa.\thelevsb.\thelevsc.\thelevsd.\thelevse\hfill}{\usecounter{levse}}\nparsetlevels}{\end{list}}

\newcommand{\nparsetlevelss}{
\setlength{\labelwidth}{28mm}
\setlength{\leftmargini}{28mm}
\setlength{\leftmarginii}{0mm}
\setlength{\leftmarginiii}{0mm}
\setlength{\leftmarginiv}{0mm}
\setlength{\leftmarginv}{0mm}
\setlength{\leftmarginvi}{0mm}
\setlength{\rightmargin}{0mm}
\setlength{\labelsep}{0mm}
\setlength{\topsep}{0mm}
\setlength{\partopsep}{0mm}
\setlength{\itemsep}{0mm}
}

\newcounter{levssa}
\newcounter{levssb}
\newcounter{levssc}
\newcounter{levssd}
\newcounter{levsse}
\newenvironment{levelssa}{\setlength{\leftmargini}{28mm}\begin{list}{\thesubsubsection.\thelevssa\hfill}{\usecounter{levssa}}\nparsetlevelss}{\end{list}}
\newenvironment{levelssb}{\begin{list}{\thesubsubsection.\thelevssa.\thelevssb\hfill}{\usecounter{levssb}}\nparsetlevelss}{\end{list}}
\newenvironment{levelssc}{\begin{list}{\thesubsubsection.\thelevssa.\thelevssb.\thelevssc\hfill}{\usecounter{levssc}}\nparsetlevelss}{\end{list}}
\newenvironment{levelssd}{\begin{list}{\thesubsubsection.\thelevssa.\thelevssb.\thelevssc.\thelevssd\hfill}{\usecounter{levssd}}\nparsetlevelss}{\end{list}}
\newenvironment{levelsse}{\begin{list}{\thesubsubsection.\thelevssa.\thelevssb.\thelevssc.\thelevssd.\thelevsse\hfill}{\usecounter{levsse}}\nparsetlevelss}{\end{list}}


  %------------------------------------------------------

\def\thebibliography#1{
%\chapter*{Bibliography\@mkboth % kentron triple
%  {BIBLIOGRAPHY}{BIBLIOGRAPHY}}%
   \dreflist{[\arabic{enumi}]}
    {\settowidth\labelwidth{[#1]}
    \leftmargin\labelwidth
    \advance
    \leftmarginreferences\labelsep
    \usecounter{enumi}}
    \def\newblock{\hskip 0.11em plus .33em minus .07em}
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=1000\relax
    }
\let\endthebibliography=\endlist

%\renewenvironment{thebibliography}[1]
%     {
%     %\chapter{\bibname\@mkboth{}{}}%
%           \list{\@biblabel{\arabic{enumiv}}}%
%           {\settowidth\labelwidth{\@biblabel{#1}}%
%            \leftmargin\labelwidth
%            \advance\leftmargin\labelsep
%            \if@openbib
%              \advance\leftmargin\bibindent
%              \itemindent -\bibindent
%              \listparindent \itemindent
%              \parsep \z@
%            \fi
%            \usecounter{enumiv}%
%            \let\p@enumiv\@empty
%            \renewcommand{\theenumiv}{\arabic{enumiv}}}%
%      \if@openbib
%        \renewcommand{\newblock}{\par}
%      \else
%        \renewcommand{\newblock}{\hskip .11em \@plus.33em \@minus.07em}%
%      \fi
%      \sloppy\clubpenalty4000\widowpenalty4000%
%      \sfcode`\.=\@m}
%     {\def\@noitemerr
%       {\@latex@warning{Empty `thebibliography' environment}}%
%      \endlist}

%--------------------------------------------------------------------
\renewenvironment{theindex}
               {\columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\@makeschapterhead{\indexname}]%
                \@mkboth{}{}%
                \parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}



%--------------------------------------------------------------------
% captions for figures.
% Figure is printed in bold face

\long\def\@makecaptionfig#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\textbf{#1:\hspace{5.5mm}#2}}%
  \ifdim \wd\@tempboxa >\hsize
     {\textbf{
     \begin{tabular}{lp{0mm}p{120mm}}
     #1:&&#2
     \end{tabular}
     }}\par
  \else
    \global \@minipagefalse
    \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

%--------------------------------------------------------------------
% captions for tables.
% Table is printed in bold face

\long\def\@makecaptiontab#1#2{%
  \vskip\belowcaptionskip
  \sbox\@tempboxa{\textbf{#1:\hspace{5.5mm}#2}}%
  \ifdim \wd\@tempboxa >\hsize
     {
     \begin{tabular}{lp{0mm}p{120mm}}
     \textbf{#1:}&&\textbf{#2}
     \end{tabular}
     }\par
  \else
    \global \@minipagefalse
    \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\abovecaptionskip}




%--------------------------------------------------------------------
\long\def\@captionfig#1[#2]#3{%
  \par
  \addcontentsline{\csname ext@#1\endcsname}{#1}%
    %{\protect\numberline{\csname the#1\endcsname}{\ignorespaces #2}}%
    {\protect\numberline{\csname fnum@#1\endcsname:}{\ignorespaces #2}}%
  \begingroup
    \@parboxrestore
    \if@minipage
      \@setminipage
    \fi
    \normalsize
    \@makecaptionfig{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup
}



%--------------------------------------------------------------------
\long\def\@captiontab#1[#2]#3{%
  \par
  \addcontentsline{\csname ext@#1\endcsname}{#1}%
    %{\protect\numberline{\csname the#1\endcsname}{\ignorespaces #2}}%
    {\protect\numberline{\csname fnum@#1\endcsname:}{\ignorespaces #2}}%
  \begingroup
    \@parboxrestore
    \if@minipage
      \@setminipage
    \fi
    \normalsize
    \@makecaptiontab{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
   \endgroup
}

%--------------------------------------------------------------------
\def\captionfig{%
   \ifx\@captype\@undefined
     \@latex@error{\noexpand\caption outside float}\@ehd
     \expandafter\@gobble
   \else
%     \refstepcounter\@captype
     \refstepcounter{figuredef}
     \expandafter\@firstofone
   \fi
   {\@dblarg{\@captionfig\@captype}}%
}

%--------------------------------------------------------------------
\def\captiontab{%
   \ifx\@captype\@undefined
     \@latex@error{\noexpand\caption outside float}\@ehd
     \expandafter\@gobble
   \else
%     \refstepcounter\@captype
     \refstepcounter{tabledef}
     \expandafter\@firstofone
   \fi
   {\@dblarg{\@captiontab\@captype}}%
}


%------------------------------------------------------------------------
% do the executive summary here.
\newcommand{\executivesummary}{%
    \chapter*{EXECUTIVE SUMMARY\@mkboth{}{}}%
    \addtocontents{toc}{\contentsline {chapter}{\numberline {Executive Summary}}{\thepage}}
    \vspace{1mm}
    \setlength{\parskip}{1pt}%
    \newsavebox{\DRboxEx}

    \sbox{\DRboxEx}{\DR@doctitle}
    \ifdim \wd\DRboxEx >\z@
        \begin{tabular}{p{30mm}p{120mm}}
        \hspace{-2.5mm}Title:&\DR@doctitle\\
        \end{tabular}\\
    \fi

    \sbox{\DRboxEx}{\DR@docabstract}
    \ifdim \wd\DRboxEx >\z@
        \begin{tabular}{p{30mm}p{120mm}}
        \hspace{-2.5mm}Abstract:& \DR@docabstract\\
        \end{tabular}\\
    \fi

    \sbox{\DRboxEx}{\DR@dockeywords}
    \ifdim \wd\DRboxEx >\z@
        \begin{tabular}{p{30mm}p{120mm}}
        \hspace{-2.5mm}Keywords: & \DR@dockeywords\\
        \end{tabular}\\
    \fi

   \sbox{\DRboxEx}{\DR@execsumObjective}
    \ifdim \wd\DRboxEx >\z@
        \begin{tabular}{p{30mm}p{120mm}}
        \hspace{-2.5mm}Objective:&\DR@execsumObjective\\
        \end{tabular}\\
    \fi

   \sbox{\DRboxEx}{\DR@execsumPurpose}
    \ifdim \wd\DRboxEx >\z@
        \begin{tabular}{p{30mm}p{120mm}}
        \hspace{-2.5mm}Purpose:&\DR@execsumPurpose\\
        \end{tabular}\\
    \fi

   \sbox{\DRboxEx}{\DR@execsumMethodology}
    \ifdim \wd\DRboxEx >\z@
        \begin{tabular}{p{30mm}p{120mm}}
        \hspace{-2.5mm}Methodology:&\DR@execsumMethodology\\
        \end{tabular}\\
    \fi

   \sbox{\DRboxEx}{\DR@execsumConclusions}
    \ifdim \wd\DRboxEx >\z@
        \begin{tabular}{p{30mm}p{120mm}}
        \hspace{-2.5mm}Conclusions:&\DR@execsumConclusions\\
        \end{tabular}\\
    \fi

   \sbox{\DRboxEx}{\DR@execsumLimitations}
    \ifdim \wd\DRboxEx >\z@
        \begin{tabular}{p{30mm}p{120mm}}
        \hspace{-2.5mm}Limitations:&\DR@execsumLimitations\\
        \end{tabular}\\
    \fi

   \sbox{\DRboxEx}{\DR@execsumBenefits}
    \ifdim \wd\DRboxEx >\z@
        \begin{tabular}{p{30mm}p{120mm}}
        \hspace{-2.5mm}Benefits:&\DR@execsumBenefits\\
        \end{tabular}\\
    \fi

   \sbox{\DRboxEx}{\DR@execsumContext}
    \ifdim \wd\DRboxEx >\z@
        \begin{tabular}{p{30mm}p{120mm}}
        \hspace{-2.5mm}Contract Context:&\DR@execsumContext\\
        \end{tabular}\\
    \fi

    \sbox{\DRboxEx}{\DR@execsumUsage}
    \ifdim \wd\DRboxEx >\z@
        \begin{tabular}{p{30mm}p{120mm}}
        \hspace{-2.5mm}Usage:&\DR@execsumUsage\\
        \end{tabular}\\
    \fi

    \setlength{\parskip}{6pt}
    }




%------------------------------------------------------------------------
% do the abbreviations bit here.
\newcommand{\listofabbreviations}{%
%    \chapter*{\listabbreviationname\@mkboth{}{}}%
    \chapter*{ABBREVIATIONS\@mkboth{}{}}%
%    \addtocontents{toc}{\contentsline {chapter}{\numberline {}Abbreviations}{\thepage}}
    \addtocontents{toc}{\contentsline {chapter}{\numberline {Abbreviations}}{\thepage}}
%    \openout15test.tst
%    \openin15irsim.abr
%    \ifeof15
%    \else
%    \read15to\myname
%    \write15\myname
%    \fi
%    \closein15
%    \closeout15

    \setlength{\parskip}{6pt}%
    \@starttoc{abr}%
    \setlength{\parskip}{6pt}
    }

\def\l@abbreviations#1#2{
{\leavevmode
%\hbox to 10mm {}%
\hbox to 20mm {#1\hfil}%
\hbox to 5mm {}%
\hbox to 110mm {#2\hfil}%
}\par
}

\def\addabbreviationsline#1#2#3#4{%
  \protected@write\@auxout
      {\let\label\@gobble \let\index\@gobble \let\glossary\@gobble}%
      {\string\@writefile{#1}%
           {\protect\contentsline{#2}{#3}{#4}}}%
}

\newcommand{\abbreviation}[2]{%
  \addabbreviationsline{abr}{abbreviations}{#1}{#2}%
  }

%---------------------------------------------------------------------



%    ****************************************
%    *              THEREFERENCES               *
%    ****************************************

\def\refitem{\@ifnextchar[{\@lrefitem}{\@refitem}}

\def\@lrefitem[#1]#2{\item[\@reflabel{#1}]\if@filesw
      { \def\protect##1{\string ##1\space}\immediate
        \write\@auxout{\string\reflcite{#2}{#1}}}\fi\ignorespaces}

\def\@refitem#1{\item\if@filesw \immediate\write\@auxout
       {\string\reflcite{#1}{\thesection.\arabic{enumi}}}\fi\ignorespaces}

\def\reflcite#1#2{\global\@namedef{b@#1}{#2}}  % ????

\def\refcite{\@ifnextchar [{\@tempswatrue\@refcitex}{\@tempswafalse\@refcitex[]}}

\def\@refcitex[#1]#2{\if@filesw\immediate\write\@auxout{\string\citation{#2}}\fi
  \def\@citea{}\@refcite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{,\penalty\@m}\@ifundefined
       {b@\@citeb}{{\bf ?}\@warning
       {Citation `\@citeb' on page \thepage \space undefined}}%
\hbox{\csname b@\@citeb\endcsname}}}{#1}}

\def\@refcite#1#2{[{#1\if@tempswa , #2\fi}]}


\def\thereferences#1{%
   \dreflist{[\thesection.\arabic{enumi}]}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \usecounter{enumi}}
    \def\newblock{\hskip .11em plus .33em minus .07em}
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=1000\relax}
\let\endthereferences=\endlist

\def\@reflabel#1{[#1]\hfill}  % Produces the label for a \refitem[...] command.
\def\refitem{\@refitem}

%    ****************************************
%    *              THESPECIFICATIONS               *
%    ****************************************

\def\spcitem{\@ifnextchar[{\@lspcitem}{\@spcitem}}

\def\@lspcitem[#1]#2{\item[\@spclabel{#1}]\if@filesw
      { \def\protect##1{\string ##1\space}\immediate
        \write\@auxout{\string\spclcite{#2}{#1}}}\fi\ignorespaces}

\def\@spcitem#1{\item\if@filesw \immediate\write\@auxout
       {\string\spclcite{#1}{\thesection.\arabic{enumi}}}\fi\ignorespaces}

\def\spclcite#1#2{\global\@namedef{b@#1}{#2}}  % ????

\def\spccite{\@ifnextchar [{\@tempswatrue\@spccitex}{\@tempswafalse\@spccitex[]}}

\def\@spccitex[#1]#2{\if@filesw\immediate\write\@auxout{\string\citation{#2}}\fi
  \def\@citea{}\@spccite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{,\penalty\@m}\@ifundefined
       {b@\@citeb}{{\bf ?}\@warning
       {Citation `\@citeb' on page \thepage \space undefined}}%
\hbox{\csname b@\@citeb\endcsname}}}{#1}}

\def\@spccite#1#2{[{#1\if@tempswa , #2\fi}]}

\def\thespecifications#1{%
   \dreflist{[\thesection.\arabic{enumi}]}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \usecounter{enumi}}
    \def\newblock{\hskip .11em plus .33em minus .07em}
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=1000\relax}
\let\endthespecifications=\endlist


\def\@spclabel#1{[#1]\hfill}  % Produces the label for a \spcitem[...] command.
\def\spcitem{\@spcitem}

%    ****************************************
%    *              THESTANDARDS               *
%    ****************************************

\def\stditem{\@ifnextchar[{\@lstditem}{\@stditem}}

\def\@lstditem[#1]#2{\item[\@stdlabel{#1}]\if@filesw
      { \def\protect##1{\string ##1\space}\immediate
        \write\@auxout{\string\stdlcite{#2}{#1}}}\fi\ignorespaces}

\def\@stditem#1{\item\if@filesw \immediate\write\@auxout
       {\string\stdlcite{#1}{\thesection.\arabic{enumi}}}\fi\ignorespaces}

\def\stdlcite#1#2{\global\@namedef{b@#1}{#2}}  % ????

\def\stdcite{\@ifnextchar [{\@tempswatrue\@stdcitex}{\@tempswafalse\@stdcitex[]}}

\def\@stdcitex[#1]#2{\if@filesw\immediate\write\@auxout{\string\citation{#2}}\fi
  \def\@citea{}\@stdcite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{,\penalty\@m}\@ifundefined
       {b@\@citeb}{{\bf ?}\@warning
       {Citation `\@citeb' on page \thepage \space undefined}}%
\hbox{\csname b@\@citeb\endcsname}}}{#1}}

\def\@stdcite#1#2{[{#1\if@tempswa , #2\fi}]}

\def\thestandards#1{%
   \dreflist{[\thesection.\arabic{enumi}]}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \usecounter{enumi}}
    \def\newblock{\hskip .11em plus .33em minus .07em}
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=1000\relax}
\let\endthestandards=\endlist

\def\@stdlabel#1{[#1]\hfill}  % Produces the label for a \stditem[...] command.
\def\stditem{\@stditem}


%    ****************************************
%    *              THEDRAWINGS              *
%    ****************************************

\def\dwgitem{\@ifnextchar[{\@ldwgitem}{\@dwgitem}}

\def\@ldwgitem[#1]#2{\item[\@dwglabel{#1}]\if@filesw
      { \def\protect##1{\string ##1\space}\immediate
        \write\@auxout{\string\dwglcite{#2}{#1}}}\fi\ignorespaces}

\def\@dwgitem#1{\item\if@filesw \immediate\write\@auxout
       {\string\dwglcite{#1}{\thesection.\arabic{enumi}}}\fi\ignorespaces}

\def\dwglcite#1#2{\global\@namedef{b@#1}{#2}}  % ????

\def\dwgcite{\@ifnextchar [{\@tempswatrue\@dwgcitex}{\@tempswafalse\@dwgcitex[]}}

\def\@dwgcitex[#1]#2{\if@filesw\immediate\write\@auxout{\string\citation{#2}}\fi
  \def\@citea{}\@dwgcite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{,\penalty\@m}\@ifundefined
       {b@\@citeb}{{\bf ?}\@warning
       {Citation `\@citeb' on page \thepage \space undefined}}%
\hbox{\csname b@\@citeb\endcsname}}}{#1}}

\def\@dwgcite#1#2{[{#1\if@tempswa , #2\fi}]}

\def\thedrawings#1{%
   \dreflist{[\thesection.\arabic{enumi}]}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \usecounter{enumi}}
    \def\newblock{\hskip .11em plus .33em minus .07em}
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=1000\relax}
\let\endthedrawings=\endlist

\def\@dwglabel#1{[#1]\hfill}  % Produces the label for a \dwgitem[...] command.
\def\dwgitem{\@dwgitem}


%    ****************************************
%    *              THEPROGRAM              *
%    ****************************************

\def\pgmitem{\@ifnextchar[{\@lpgmitem}{\@pgmitem}}

\def\@lpgmitem[#1]#2{\item[\@pgmlabel{#1}]\if@filesw
      { \def\protect##1{\string ##1\space}\immediate
        \write\@auxout{\string\pgmlcite{#2}{#1}}}\fi\ignorespaces}

\def\@pgmitem#1{\item\if@filesw \immediate\write\@auxout
       {\string\pgmlcite{#1}{\thesection.\arabic{enumi}}}\fi\ignorespaces}

\def\pgmlcite#1#2{\global\@namedef{b@#1}{#2}}  % ????

\def\pgmcite{\@ifnextchar [{\@tempswatrue\@pgmcitex}{\@tempswafalse\@pgmcitex[]}}

\def\@pgmcitex[#1]#2{\if@filesw\immediate\write\@auxout{\string\citation{#2}}\fi
  \def\@citea{}\@pgmcite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{,\penalty\@m}\@ifundefined
       {b@\@citeb}{{\bf ?}\@warning
       {Citation `\@citeb' on page \thepage \space undefined}}%
\hbox{\csname b@\@citeb\endcsname}}}{#1}}

\def\@pgmcite#1#2{[{#1\if@tempswa , #2\fi}]}

\def\theprogramme#1{%
   \dreflist{[\thesection.\arabic{enumi}]}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \usecounter{enumi}}
    \def\newblock{\hskip .11em plus .33em minus .07em}
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=1000\relax}
\let\endtheprogramme=\endlist

\def\@pgmlabel#1{[#1]\hfill}  % Produces the label for a \pgmitem[...] command.
\def\pgmitem{\@pgmitem}

%---------------------
% new item command for the extended references list.
\def\@drefmklab#1{#1 \hfil}
\def\dreflist#1#2{%
  \ifnum \@listdepth >5\relax
    \@toodeep
  \else
    \global\advance\@listdepth\@ne
  \fi
  \rightmargin\z@
  \listparindent\z@
  \itemindent\z@
  \csname @list\romannumeral\the\@listdepth\endcsname
  \def\@itemlabel{#1}%
  \let\makelabel\@drefmklab
  \@nmbrlistfalse
  #2\relax
  \@trivlist
  \parskip\parsep
  \parindent\listparindent
  \advance\linewidth -\rightmargin
  \advance\linewidth -\leftmargin
  \advance\@totalleftmargin \leftmargin
  \parshape \@ne \@totalleftmargin \linewidth
  \ignorespaces}


%---------------------------------------------------------------------
% TBC command requires Postscript
%\newcommand{\TBC}[1]{%
%\psframebox[linewidth=0.1pt,linestyle=dashed,fillstyle=solid,fillcolor=yellow]{#1}%
%}

%---------------------------------------------------------------------



%\DeclareGraphicsExtensions{.jpg, .eps}
%\DeclareGraphicsRule{.jpg}{eps}{.jpg.bb}{`jpeg2ps -h -r 600 #1}



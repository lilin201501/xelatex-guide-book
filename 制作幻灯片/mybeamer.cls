% mybeamer.cls
%
% by wanze
% LPPL LaTeX Public Project License
%
%

\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{mybeamer}
\PassOptionsToPackage{table}{xcolor}
\PassOptionsToPackage{colorlinks=true,linkcolor=blue,citecolor=blue}{hyperref}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}%???
\ProcessOptions\relax
\LoadClass[covered]{beamer}
\mode<presentation>{\beamer@suppressreplacementstrue}


%========基本必备的宏包========%
\RequirePackage{calc,float,multicol,moresize}

%===========加入目录 某章或某节=====%

\newcommand{\addchtoc}[1]{
        \cleardoublepage
        \phantomsection
        \addcontentsline{toc}{chapter}{#1}}

\newcommand{\addsectoc}[1]{
        \phantomsection
        \addcontentsline{toc}{section}{#1}}

%===========全文基本格式==========%

\newenvironment{common-format}{ %
        \setlength{\parskip}{1.6ex plus 0.2ex minus 0.2ex}   %段落間距
        \setlength{\parindent}{\baselineskip * \real{0.06} + \textpt * \real{2.4}}}
    {}

%=============color=============%
\definecolor{bgcolor-0}{HTML}{CCFFCC}


%================字體================%
\RequirePackage{xltxtra,fontspec,xunicode} %必備三件套
\RequirePackage[CJKnumber=true]{xeCJK} %中文環境宏
\xeCJKsetup{PunctStyle=plain}
\defaultCJKfontfeatures{Scale=1.2}   %放大全局CJK字體。中文字應該稍微高於英文字
\setCJKmainfont[BoldFont=Adobe 黑体 Std,ItalicFont=Adobe 楷体 Std]
    {Adobe 宋体 Std}%影響rmfamily字體
\setCJKsansfont{Adobe 黑体 Std}%影響sffamily字體
\setCJKmonofont{Adobe 楷体 Std}%影響ttfamily字體
 %設置英文字體
\setmainfont[Mapping=tex-text]{DejaVu Serif}
\setsansfont[Mapping=tex-text]{DejaVu Sans}
\setmonofont[Mapping=tex-text]{DejaVu Sans Mono}

%=============新的字符===========%
\newfontfamily{\libertine}[Scale=1.5]{Linux Libertine O}
\newfontfamily{\ubuntu}[Scale=3]{Ubuntu}
\RequirePackage{newunicodechar}
\newunicodechar{Ⓐ}{{\libertine{Ⓐ}}}
\newunicodechar{Ⓑ}{{\libertine{Ⓑ}}}
\newunicodechar{Ⓒ}{{\libertine{Ⓒ}}}
\newunicodechar{Ⓓ}{{\libertine{Ⓓ}}}
\newunicodechar{①}{{\libertine{①}}}
\newunicodechar{②}{{\libertine{②}}}
\newunicodechar{③}{{\libertine{③}}}
\newunicodechar{④}{{\libertine{④}}}
\newunicodechar{⑤}{{\libertine{⑤}}}
\newunicodechar{}{{\ubuntu{}}}

%%===============中文化=========%
\renewcommand\contentsname{目~录}
\renewcommand\listfigurename{插图目录}
\renewcommand\listtablename{表格目录}
\renewcommand\bibname{参~考~文~献}
\renewcommand\indexname{索~引}
\renewcommand\figurename{图}
\renewcommand\tablename{表}
\renewcommand\partname{部分}
\renewcommand\appendixname{附录}
%\renewcommand\today{\number\year年\number\month月\number\day日}



%=================文字強調=========%
\RequirePackage{ulem} %下劃線,加點
\normalem

\newcommand\reduline{\bgroup\markoverwith
    {\textcolor{red}{\rule[-0.8ex]{1em}{0.4pt}}}\ULon}
\renewcommand\emshape{\color{red}}

%==================插入圖片=======%
\RequirePackage{graphicx}
\graphicspath{{figures/}}

\newenvironment{fig}[1]
        {\begin{figure}[H]
        \includegraphics[width=\linewidth ,totalheight=\textheight , keepaspectratio]{#1}
        \caption{#1}}
        {\end{figure}}
\newenvironment{scalefig}[2][0.4]
        {\begin{figure}[H]
        \includegraphics[scale=#1]{#2}
        \caption{#2}}
        {\end{figure}}

%==============插入表格========%
\RequirePackage{booktabs}
\renewcommand{\arraystretch}{1.3}

%==========showcode endvironments======%
\RequirePackage{etoolbox}
\RequirePackage{fancyvrb}
%%%%%%%%%%%%%%%%%%%%%for pygmentize
\def\PY@reset{\let\PY@it=\relax \let\PY@bf=\relax%
    \let\PY@ul=\relax \let\PY@tc=\relax%
    \let\PY@bc=\relax \let\PY@ff=\relax}
\def\PY@tok#1{\csname PY@tok@#1\endcsname}
\def\PY@toks#1+{\ifx\relax#1\empty\else%
    \PY@tok{#1}\expandafter\PY@toks\fi}
\def\PY@do#1{\PY@bc{\PY@tc{\PY@ul{%
    \PY@it{\PY@bf{\PY@ff{#1}}}}}}}
\def\PY#1#2{\PY@reset\PY@toks#1+\relax+\PY@do{#2}}

\expandafter\def\csname PY@tok@gd\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.63,0.00,0.00}{##1}}}
\expandafter\def\csname PY@tok@gu\endcsname{\let\PY@bf=\textbf\def\PY@tc##1{\textcolor[rgb]{0.50,0.00,0.50}{##1}}}
\expandafter\def\csname PY@tok@gt\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.00,0.27,0.87}{##1}}}
\expandafter\def\csname PY@tok@gs\endcsname{\let\PY@bf=\textbf}
\expandafter\def\csname PY@tok@gr\endcsname{\def\PY@tc##1{\textcolor[rgb]{1.00,0.00,0.00}{##1}}}
\expandafter\def\csname PY@tok@cm\endcsname{\let\PY@it=\textit\def\PY@tc##1{\textcolor[rgb]{0.25,0.50,0.50}{##1}}}
\expandafter\def\csname PY@tok@vg\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.10,0.09,0.49}{##1}}}
\expandafter\def\csname PY@tok@m\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.40,0.40,0.40}{##1}}}
\expandafter\def\csname PY@tok@mh\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.40,0.40,0.40}{##1}}}
\expandafter\def\csname PY@tok@go\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.53,0.53,0.53}{##1}}}
\expandafter\def\csname PY@tok@ge\endcsname{\let\PY@it=\textit}
\expandafter\def\csname PY@tok@vc\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.10,0.09,0.49}{##1}}}
\expandafter\def\csname PY@tok@il\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.40,0.40,0.40}{##1}}}
\expandafter\def\csname PY@tok@cs\endcsname{\let\PY@it=\textit\def\PY@tc##1{\textcolor[rgb]{0.25,0.50,0.50}{##1}}}
\expandafter\def\csname PY@tok@cp\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.74,0.48,0.00}{##1}}}
\expandafter\def\csname PY@tok@gi\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.00,0.63,0.00}{##1}}}
\expandafter\def\csname PY@tok@gh\endcsname{\let\PY@bf=\textbf\def\PY@tc##1{\textcolor[rgb]{0.00,0.00,0.50}{##1}}}
\expandafter\def\csname PY@tok@ni\endcsname{\let\PY@bf=\textbf\def\PY@tc##1{\textcolor[rgb]{0.60,0.60,0.60}{##1}}}
\expandafter\def\csname PY@tok@nl\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.63,0.63,0.00}{##1}}}
\expandafter\def\csname PY@tok@nn\endcsname{\let\PY@bf=\textbf\def\PY@tc##1{\textcolor[rgb]{0.00,0.00,1.00}{##1}}}
\expandafter\def\csname PY@tok@no\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.53,0.00,0.00}{##1}}}
\expandafter\def\csname PY@tok@na\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.49,0.56,0.16}{##1}}}
\expandafter\def\csname PY@tok@nb\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.00,0.50,0.00}{##1}}}
\expandafter\def\csname PY@tok@nc\endcsname{\let\PY@bf=\textbf\def\PY@tc##1{\textcolor[rgb]{0.00,0.00,1.00}{##1}}}
\expandafter\def\csname PY@tok@nd\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.67,0.13,1.00}{##1}}}
\expandafter\def\csname PY@tok@ne\endcsname{\let\PY@bf=\textbf\def\PY@tc##1{\textcolor[rgb]{0.82,0.25,0.23}{##1}}}
\expandafter\def\csname PY@tok@nf\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.00,0.00,1.00}{##1}}}
\expandafter\def\csname PY@tok@si\endcsname{\let\PY@bf=\textbf\def\PY@tc##1{\textcolor[rgb]{0.73,0.40,0.53}{##1}}}
\expandafter\def\csname PY@tok@s2\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.73,0.13,0.13}{##1}}}
\expandafter\def\csname PY@tok@vi\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.10,0.09,0.49}{##1}}}
\expandafter\def\csname PY@tok@nt\endcsname{\let\PY@bf=\textbf\def\PY@tc##1{\textcolor[rgb]{0.00,0.50,0.00}{##1}}}
\expandafter\def\csname PY@tok@nv\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.10,0.09,0.49}{##1}}}
\expandafter\def\csname PY@tok@s1\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.73,0.13,0.13}{##1}}}
\expandafter\def\csname PY@tok@sh\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.73,0.13,0.13}{##1}}}
\expandafter\def\csname PY@tok@sc\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.73,0.13,0.13}{##1}}}
\expandafter\def\csname PY@tok@sx\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.00,0.50,0.00}{##1}}}
\expandafter\def\csname PY@tok@bp\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.00,0.50,0.00}{##1}}}
\expandafter\def\csname PY@tok@c1\endcsname{\let\PY@it=\textit\def\PY@tc##1{\textcolor[rgb]{0.25,0.50,0.50}{##1}}}
\expandafter\def\csname PY@tok@kc\endcsname{\let\PY@bf=\textbf\def\PY@tc##1{\textcolor[rgb]{0.00,0.50,0.00}{##1}}}
\expandafter\def\csname PY@tok@c\endcsname{\let\PY@it=\textit\def\PY@tc##1{\textcolor[rgb]{0.25,0.50,0.50}{##1}}}
\expandafter\def\csname PY@tok@mf\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.40,0.40,0.40}{##1}}}
\expandafter\def\csname PY@tok@err\endcsname{\def\PY@bc##1{\setlength{\fboxsep}{0pt}\fcolorbox[rgb]{1.00,0.00,0.00}{1,1,1}{\strut ##1}}}
\expandafter\def\csname PY@tok@kd\endcsname{\let\PY@bf=\textbf\def\PY@tc##1{\textcolor[rgb]{0.00,0.50,0.00}{##1}}}
\expandafter\def\csname PY@tok@ss\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.10,0.09,0.49}{##1}}}
\expandafter\def\csname PY@tok@sr\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.73,0.40,0.53}{##1}}}
\expandafter\def\csname PY@tok@mo\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.40,0.40,0.40}{##1}}}
\expandafter\def\csname PY@tok@kn\endcsname{\let\PY@bf=\textbf\def\PY@tc##1{\textcolor[rgb]{0.00,0.50,0.00}{##1}}}
\expandafter\def\csname PY@tok@mi\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.40,0.40,0.40}{##1}}}
\expandafter\def\csname PY@tok@gp\endcsname{\let\PY@bf=\textbf\def\PY@tc##1{\textcolor[rgb]{0.00,0.00,0.50}{##1}}}
\expandafter\def\csname PY@tok@o\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.40,0.40,0.40}{##1}}}
\expandafter\def\csname PY@tok@kr\endcsname{\let\PY@bf=\textbf\def\PY@tc##1{\textcolor[rgb]{0.00,0.50,0.00}{##1}}}
\expandafter\def\csname PY@tok@s\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.73,0.13,0.13}{##1}}}
\expandafter\def\csname PY@tok@kp\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.00,0.50,0.00}{##1}}}
\expandafter\def\csname PY@tok@w\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.73,0.73,0.73}{##1}}}
\expandafter\def\csname PY@tok@kt\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.69,0.00,0.25}{##1}}}
\expandafter\def\csname PY@tok@ow\endcsname{\let\PY@bf=\textbf\def\PY@tc##1{\textcolor[rgb]{0.67,0.13,1.00}{##1}}}
\expandafter\def\csname PY@tok@sb\endcsname{\def\PY@tc##1{\textcolor[rgb]{0.73,0.13,0.13}{##1}}}
\expandafter\def\csname PY@tok@k\endcsname{\let\PY@bf=\textbf\def\PY@tc##1{\textcolor[rgb]{0.00,0.50,0.00}{##1}}}
\expandafter\def\csname PY@tok@se\endcsname{\let\PY@bf=\textbf\def\PY@tc##1{\textcolor[rgb]{0.73,0.40,0.13}{##1}}}
\expandafter\def\csname PY@tok@sd\endcsname{\let\PY@it=\textit\def\PY@tc##1{\textcolor[rgb]{0.73,0.13,0.13}{##1}}}

\def\PYZbs{\char`\\}
\def\PYZus{\char`\_}
\def\PYZob{\char`\{}
\def\PYZcb{\char`\}}
\def\PYZca{\char`\^}
\def\PYZam{\char`\&}
\def\PYZlt{\char`\<}
\def\PYZgt{\char`\>}
\def\PYZsh{\char`\#}
\def\PYZpc{\char`\%}
\def\PYZdl{\char`\$}
\def\PYZhy{\char`\-}
\def\PYZsq{\char`\'}
\def\PYZdq{\char`\"}
\def\PYZti{\char`\~}
% for compatibility with earlier versions
\def\PYZat{@}
\def\PYZlb{[}
\def\PYZrb{]}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newwrite\@codeout
% Put the  code in separate files.
\newcounter{@EnvironmentCounter}
\setcounter{@EnvironmentCounter}{0}

%here is hard to understand
\begingroup \catcode `|=0 \catcode `[=1
\catcode`]=2 \catcode `\{=12 \catcode `\}=12
\catcode`\\=12
|gdef|@xverbatim#1\end{xverbatim}[|immediate|write|@codeout[#1]|end[xverbatim]]
|endgroup

\DeclareRobustCommand*{\@showcode}{%
%use the pygmentize
\ifdefstring{\@codemode}{tex}
{
 \immediate\write18{pygmentize   -o \@outname.output.tex \@outname.\@codemode}
 \immediate\VerbatimInput[numbers=left,frame=lines,tabsize=4 ,baselinestretch=2,
    xleftmargin=6pt, fontsize=\footnotesize , numbersep=2pt,commandchars=\\\{\}]{\@outname.output.tex}
}
{
\immediate\write18{pygmentize   -o \@outname.tex \@outname.\@codemode}
%use fancyvrb VerbatimInput control the out
\immediate\VerbatimInput[numbers=left,frame=lines,tabsize=4 ,baselinestretch=2,
    xleftmargin=6pt, fontsize=\footnotesize , numbersep=2pt,commandchars=\\\{\}]{\@outname.tex}
}
}

%environment start
\newenvironment{xverbatim}[1]%
  {
  \immediate\stepcounter{@EnvironmentCounter}
\def\@codemode{#1}
%if the filefolder doesnot exist  then creat it
\immediate\write18{ if [  !  -d  codeexport/\@codemode/   ];  then mkdir -p codeexport/\@codemode/  ; fi }
%modified the code file name
\newcommand{\@outname}{codeexport/\@codemode/\jobname-\arabic{@EnvironmentCounter}}
\immediate\openout\@codeout=\@outname.\@codemode
\newlinechar='15
\begingroup \catcode`\^^M=12 %
\let\do\@makeother\dospecials\obeyspaces%
\@xverbatim}
  {\endgroup
  \immediate\closeout\@codeout
 \@showcode
}

\endinput



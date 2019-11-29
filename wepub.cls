%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SIST Templates
%% copyright (c) Guanjie Wang, <wangguanjie0@126.com>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{wepub}[2019/11/29 v1.0 SIST G. Wang]

%将选项传给report
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}

% terminates the option processing 结束option进程
\ProcessOptions\relax

\LoadClass[11pt]{report}

\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm,xeCJK}
\RequirePackage{graphicx,color,geometry,fancyhdr}
\RequirePackage[framemethod=tikz]{mdframed}
\usetikzlibrary{shadows}
\RequirePackage{hyperref}

\RequirePackage[framemethod=tikz]{mdframed}
\RequirePackage{setspace}
\renewcommand{\baselinestretch}{1.2}

\AtEndOfClass{\makeatletter\input{wepub.cfg}\makeatother}

\hypersetup{colorlinks=true,linkcolor=blue,citecolor={blue}}


\geometry{
	paperwidth = 77mm,
	paperheight = 500mm,	
	left = 2mm,
	right = 2mm,
	top = 4mm,
	bottom = 4mm
}


\newcommand{\HRule}[1]{\rule{\linewidth}{#1}}
\renewcommand{\author}[1]{\def\value@author{#1}}
\renewcommand{\title}[1]{\def\value@title{#1}}
\renewcommand{\date}[1]{\def\value@date{#1}}


\renewcommand{\maketitle}{
		\begin{center}
			 \value@title\\
			 {\tiny \value@author\qquad \value@date}\\
		\end{center}	
}


% 定义默认值
\makeatletter
\def\value@date{\today}
\def\value@author{author}
\def\value@title{Title}
\makeatother

\endinput

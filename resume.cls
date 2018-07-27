%% resume.cls
% Resume class file
%
% Philip Linden <pjl7651@rit.edu>
% https://github.com/runphilrun/resume
%
% This file defines the layout and typesetting of document parts.
% This file should not be edited.
%
% LaTeX Project Public License (LPPL) 1.3c
% https://www.latex-project.org/lppl

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2018/07/23 v0.1 Resume Class]

% =======
% options
% -------
\DeclareOption*{% inherit options of article
  \PassOptionsToClass{\CurrentOption}{article}%
}
% font type options
\DeclareOption{sans}{\AtBeginDocument{\renewcommand{\familydefault}{\sfdefault}}}
\DeclareOption{roman}{\AtBeginDocument{\renewcommand{\familydefault}{\rmdefault}}}

\ExecuteOptions{letterpaper,10pt,final} % execute default options
\ProcessOptions\relax
\LoadClass{article}
% -------

% ========
% packages
% --------
\RequirePackage{titlesec} % customize header styles
\RequirePackage[margin=0.75in]{geometry} % page layout
\RequirePackage[colorlinks=true,urlcolor=blue]{hyperref} % insert hyperlinks
\RequirePackage{fancyhdr} % fancy header and footer
\RequirePackage{lastpage} % reference number of pages in doc
\RequirePackage{enumitem} % fancy lists
\RequirePackage{url}      % insert links
\RequirePackage[T1]{fontenc} % T1 font encoding
\RequirePackage{lmodern}  % use Latin Modern Sans Serif
\RequirePackage{fontawesome} % high quality web icons
% --------

% ======
% format
% ------

% PAGE LAYOUT
\pagestyle{fancy}
\setlength\parindent{0em}
\renewcommand{\familydefault}{\sfdefault}

% HEADER
\fancyhead{} % clear header
\renewcommand{\headrulewidth}{0pt}
% name
\def\name#1{\def\@name{#1}}
\name{% default name
  Your Name Here 
}
\newcommand{\printname}{\@name}
\chead{\bf\Large{\printname}}
% left contact block
\def\lcontact#1{\def\@lcontact{#1}}
\lcontact{% default left contact block
}
\newcommand{\printlcontact}{\@lcontact}
\lhead{\printlcontact}
% right contact block
\def\rcontact#1{\def\@rcontact{#1}}
\rcontact{% default right contact block
}
\newcommand{\printrcontact}{\@rcontact}
\rhead{\printrcontact}

% FOOTER
\fancyfoot{} % clear footer
\renewcommand{\footrulewidth}{0pt}
\cfoot{\thepage~of~\pageref*{LastPage}}

% SECTION HEADERS
\titleformat{\section} % modify the \section command
  {\large\raggedright}{}{0em}{}[\titlerule]
\titlespacing*{\section}{0pt}{0.5em}{0.3em}

\titleformat{\subsection} % modify the \subsection command
  {\large\bf\raggedright}{}{0em}{}

\newcommand{\headerwithlabel}[3]{% bold first item, italic second, right align third
  \vspace{0.3em}{{\bf #1}~{\it\normalsize #2}\hfill {\normalsize#3}} \\
}

% TABLES AND LISTS
\setlist[itemize]{nosep} % kill vertical spacing
\renewcommand{\labelitemi}{-~}

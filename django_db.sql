-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2024 年 08 月 02 日 03:40
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `django_db`
--

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add post', 7, 'add_post'),
(26, 'Can change post', 7, 'change_post'),
(27, 'Can delete post', 7, 'delete_post'),
(28, 'Can view post', 7, 'view_post'),
(29, 'Can add guest book', 8, 'add_guestbook'),
(30, 'Can change guest book', 8, 'change_guestbook'),
(31, 'Can delete guest book', 8, 'delete_guestbook'),
(32, 'Can view guest book', 8, 'view_guestbook');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$I2kZPj50NLyYt7a8Z0Ysl9$aw8kdjcwrX3QqDVhb5l6Op0VrNcIGr8BmR76pfhBAvs=', '2024-07-05 07:58:46.442000', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2024-07-05 07:57:14.065000'),
(2, 'pbkdf2_sha256$720000$c9sG4Y4TbzVoUnBCuZUlt4$JNVH/R3QixUWMuQG1BlLbuUOro8ES5dwvMoLlmnz9cE=', NULL, 1, 'ethanjuan', '', '', 'ethanjuan@gmail.com', 1, 1, '2024-07-11 07:49:07.878000');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `blog_post_guestbook`
--

CREATE TABLE `blog_post_guestbook` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` longtext NOT NULL,
  `req_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `blog_post_post`
--

CREATE TABLE `blog_post_post` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `pub_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `blog_post_post`
--

INSERT INTO `blog_post_post` (`id`, `title`, `slug`, `content`, `pub_date`) VALUES
(1, 'Post_Title01', 'Post_Slug01', 'Post Content 01\r\nPost Content 01\r\nPost Content 01', '2024-07-05 08:25:32.889000'),
(2, 'Post_Title02', 'Post_Slug02', 'Post Content 02\r\nPost Content 02\r\nPost Content 02', '2024-07-05 08:26:49.758000'),
(3, 'Post_Title03', 'Post_Slug03', 'Post Content 03\r\nPost Content 03\r\nPost Content 03', '2024-07-05 08:27:47.812000'),
(4, 'Post_Title04', 'Post_Slug04', 'Post Content 04\r\nPost Content 04\r\nPost Content 04', '2024-07-05 08:28:43.313000'),
(5, 'Post_Title05', 'Post_Slug05', 'Post Content 05\r\nPost Content 05\r\nPost Content 05', '2024-07-05 08:29:28.780000'),
(6, 'Show HTML Image', 'dispaly-html-with-img', '<blockquote class=\"imgur-embed-pub\" lang=\"en\" data-id=\"a/oFFsavC\" data-context=\"false\">\r\n<a href=\"//imgur.com/a/oFFsavC\"></a>\r\n</blockquote>\r\n<script async src=\"//s.imgur.com/min/embed.js\" charset=\"utf-8\"></script>', '2024-07-11 05:24:22.784000'),
(7, 'New_Post_news', 'new_Slug_news', 'Introduction\r\nAcademic workflow, certainly in political science, is at a crossroads. The American Journal of Political Science (AJPS) announced a (my words) \"show your work\" initiative in which authors who are tentatively accepted for publication at the journal must hand over the raw code and data that produced the results shown in the manuscript. The editorial team at AJPS then reproduces the code from the manuscript. Pending successful replication, the manuscript moves toward publication. The AJPS might be at the fore of this movement, and it could be the most aggressive among political science journals, but other journals in our field have signed the joint Data Access & Research Transparency (DART) initiative. This, at a bare minimum, requires uploading code from quantitatively-oriented published articles to in-house directories hosted by the journal or to services like Dataverse.\r\n\r\nThere are workflow implications to the Lacour controversy as well. Political science, for the foreseeable future, will struggle with the extent of the data fraud perpetrated by Michael Lacour in an article co-authored with Donald P. Green in Science, the general scientific journal of record in the United States. A failure to reproduce LaCour\'s results with different samples uncovered a comprehensive effort by LaCour to \"fake\" data that provided results to what we felt or believed to be true (i.e. \"truthiness\"). However, fake data can have real consequences for both the researcher and those who want to learn from it and use it for various purposes. Even research done honestly may suffer the same fate if researchers are not diligent in their workflow.\r\n\r\nThese recent events underscore the DART push and cast a shadow over our workflow. However, good workflow has always been an issue in our discipline. Cloud storage services like Dropbox are still relatively new among political scientists. Without cloud storage, previous workflow left open the possibility that work between a home computer and an office computer was lost as a function of a corrupted thumb drive, an overheated power supply, or, among other things, the wave of viruses that would particularly affect Microsoft users every summer. Social sciences, unlike engineering, have traditionally relied on software like Microsoft Word for manuscript preparation though any word processor reduces workflow to a series of clicks and strokes on a keyboard. This is a terrible way to track changes or maintain version control. The addition of collaborators only compounds all the aforementioned issues. The proverbial left hand may not know what the right hand is doing.\r\n\r\nI think there is reason for optimism. We only struggle with it now because we have tools like R Markdown and Pandoc, more generally, that make significant strides in workflow. LaTeX resolved earlier issues of corrupted binary files by reducing documents to raw markup that was little more than raw text and revisions that could be easily kept as \"commented\" text. However, for all its benefits (including pretty PDFs), LaTeX is ugly code and does not provide means of seamlessly working with the actual data analysis itself. R Markdown both eliminates markup and allows the author and her collaborators to write and reproduce the manuscript in one fell swoop.', '2024-07-11 05:35:10.682000'),
(8, 'Show Markdown Content', 'dispaly-markdown-content', '---\r\noutput: \r\n  pdf_document:\r\n    citation_package: natbib\r\n    keep_tex: true\r\n    fig_caption: true\r\n    latex_engine: pdflatex\r\n    template: ~/Dropbox/miscelanea/svm-r-markdown-templates/svm-latex-ms.tex\r\ntitle: \"A Pandoc Markdown Article Starter and Template\"\r\nthanks: \"Replication files are available on the author\'s Github account (http://github.com/svmiller). **Current version**: `r format(Sys.time(), \'%B %d, %Y\')`; **Corresponding author**: svmille@clemson.edu.\"\r\nauthor:\r\n- name: Steven V. Miller\r\n  affiliation: Clemson University\r\nabstract: \"This document provides an introduction to R Markdown, argues for its benefits, and presents a sample manuscript template intended for an academic audience. I include basic syntax to R Markdown and a minimal working example of how the analysis itself can be conducted within R with the `knitr` package.\"\r\nkeywords: \"pandoc, r markdown, knitr\"\r\ndate: \"`r format(Sys.time(), \'%B %d, %Y\')`\"\r\ngeometry: margin=1in\r\nfontfamily: mathpazo\r\nfontsize: 11pt\r\n# spacing: double\r\nbibliography: ~/Dropbox/master.bib\r\nbiblio-style: apsr\r\nendnote: no\r\n---\r\n\r\n# Introduction\r\n\r\nAcademic workflow, certainly in political science, is at a crossroads. The *American Journal of Political Science* (*AJPS*) announced a (my words) [\"show your work\" initiative](http://ajps.org/2015/03/26/the-ajps-replication-policy-innovations-and-revisions/) in which authors who are tentatively accepted for publication at the journal must hand over the raw code and data that produced the results shown in the manuscript. The editorial team at *AJPS* then reproduces the code from the manuscript. Pending successful replication, the manuscript moves toward publication. The *AJPS* might be at the fore of this movement, and it could be the most aggressive among political science journals, but other journals in our field have signed the joint [Data Access & Research Transparency](http://www.dartstatement.org/) (DART) initiative. This, at a bare minimum, requires uploading code from quantitatively-oriented published articles to in-house directories hosted by the journal or to services like [Dataverse](http://dataverse.org/). \r\n\r\nThere are workflow implications to the Lacour controversy as well. Political science, for the foreseeable future, will struggle with the extent of [the data fraud perpetrated by Michael Lacour](http://stanford.edu/~dbroock/broockman_kalla_aronow_lg_irregularities.pdf) in an article co-authored with Donald P. Green in *Science*, the general scientific journal of record in the United States. A failure to reproduce LaCour\'s results with different samples uncovered a comprehensive effort by LaCour to \"fake\" data that provided results to what we felt or believed to be true [(i.e. \"truthiness\")](http://chronicle.com/article/LAffaire-LaCour/230905/). However, [fake data can have real consequences](http://kieranhealy.org/blog/archives/2015/05/20/fake-science-real-consequences/) for both the researcher and those who want to learn from it and use it for various purposes. Even research done honestly may suffer the same fate if researchers are not diligent in their workflow.\r\n\r\nThese recent events underscore the DART push and cast a shadow over our workflow. However, good workflow has always been an issue in our discipline. Cloud storage services like [Dropbox](http://www.dropbox.com) are still relatively new among political scientists. Without cloud storage, previous workflow left open the possibility that work between a home computer and an office computer was lost as a function of a corrupted thumb drive, an overheated power supply, or, among other things, the wave of viruses that [would particularly affect Microsoft users every summer](http://money.cnn.com/2003/11/05/technology/microsoftbounty/). Social sciences, [unlike engineering](http://kieranhealy.org/blog/archives/2014/01/23/plain-text/), have traditionally relied on software like Microsoft Word for manuscript preparation though any word processor reduces workflow to a series of clicks and strokes on a keyboard. This is [a terrible way to track changes](http://www.nytimes.com/2013/04/19/opinion/krugman-the-excel-depression.html) or maintain version control. The addition of collaborators only compounds all the aforementioned issues. The proverbial left hand may not know what the right hand is doing.\r\n\r\nI think there is reason for optimism. We only struggle with it now because we have tools like [R Markdown](http://rmarkdown.rstudio.com/) and [Pandoc](http://pandoc.org/), more generally, that make significant strides in workflow. LaTeX resolved earlier issues of corrupted binary files by reducing documents to raw markup that was little more than raw text and revisions that could be easily kept as [\"commented\" text](http://tex.stackexchange.com/questions/11177/how-to-write-hidden-notes-in-a-latex-file). However, for all its benefits (including pretty PDFs), [LaTeX is *ugly* code](http://www-rohan.sdsu.edu/~aty/bibliog/latex/gripe.html) and does not provide means of seamlessly working with the actual data analysis itself. R Markdown both eliminates markup and allows the author and her collaborators to write and reproduce the manuscript in one fell swoop.\r\n\r\n# Getting Started with YAML\r\n\r\nThe lion\'s share of a R Markdown document will be raw text, though the front matter may be the most important part of the document. R Markdown uses [YAML](http://www.yaml.org/) for its metadata and the fields differ from [what an author would use for a Beamer presentation](http://svmiller.com/blog/2015/02/moving-from-beamer-to-r-markdown/). I provide a sample YAML metadata largely taken from this exact document and explain it below.\r\n\r\n```{r eval=FALSE}\r\n---\r\noutput: \r\n  pdf_document:\r\n    citation_package: natbib\r\n    keep_tex: true\r\n    fig_caption: true\r\n    latex_engine: pdflatex\r\n    template: ~/Dropbox/miscelanea/svm-r-markdown-templates/svm-latex-ms.tex\r\ntitle: \"A Pandoc Markdown Article Starter and Template\"\r\nthanks: \"Replication files are available on the author\'s Github account...\"\r\nauthor:\r\n- name: Steven V. Miller\r\n  affiliation: Clemson University\r\n- name: Mary Margaret Albright\r\n  affiliation: Pendelton State University\r\n- name: Rembrandt Q. Einstein\r\n  affiliation: Springfield University\r\nabstract: \"This document provides an introduction to R Markdown, argues for its...\"\r\nkeywords: \"pandoc, r markdown, knitr\"\r\ndate: \"`r format(Sys.time(), \'%B %d, %Y\')`\"\r\ngeometry: margin=1in\r\nfontfamily: mathpazo\r\nfontsize: 11pt\r\n# spacing: double\r\nbibliography: ~/Dropbox/master.bib\r\nbiblio-style: apsr\r\n---\r\n```\r\n\r\n`output:` will tell R Markdown we want a PDF document rendered with LaTeX. Since we are adding a fair bit of custom options to this call, we specify `pdf_document:` on the next line (with, importantly, a two-space indent). We specify additional output-level options underneath it, each are indented with four spaces. `citation_package: natbib` tells R Markdown to use `natbib` to handle bibliographic citations.[^natbib] Thereafter, the next line (`keep_tex: true`) tells R Markdown to render a raw `.tex` file along with the PDF document. This is useful for both debugging and the publication stage, when the editorial team will ask for the raw `.tex` so that they could render it and later provide page proofs. The next line `fig_caption: true` tells R Markdown to make sure that whatever images are included in the document are treated as figures in which our caption in brackets in a Markdown call is treated as the caption in the figure. The next line (`latex_engine: pdflatex`) tells R Markdown to use pdflatex and not some other option like `lualatex`. For my template, I\'m pretty sure this is mandatory.[^pdflatex]\r\n\r\n[^natbib]: R Markdown can use Pandoc\'s native bibliography management system or even `biblatex`, but I\'ve found that it chokes with some of the more advanced stuff I\'ve done with my .bib file over the years. For example, I\'ve been diligent about special characters (e.g. umlauts and acute accents) in author names in my .bib file, but Pandoc\'s native citation system will choke on these characters in a .bib file. I effectively need `natbib` for my own projects.\r\n[^pdflatex]: The main reason I still use `pdflatex` (and most readers probably do as well) is because of LaTeX fonts. [Unlike others](http://www-rohan.sdsu.edu/~aty/bibliog/latex/gripe.html), I find standard LaTeX fonts to be appealing.\r\n\r\nThe next line (`template: ...`) tells R Markdown to use my custom LaTeX template.[^path] While I will own any errors in the code, I confess to \"Frankensteining\" this template from [the default LaTeX template](https://github.com/jgm/pandoc-templates) from Pandoc, [Kieran Healy\'s LaTeX template](https://github.com/kjhealy/pandoc-templates/tree/master/templates), and liberally using raw TeX from the [Association for Computing Machinery\'s (ACM) LaTeX template](https://www.acm.org/publications/article-templates/acm-latex-style-guide). I rather like that template since it resembles standard manuscripts when they are published in some of our more prominent journals. I will continue with a description of the YAML metadata in the next paragraph, though invite the curious reader to scroll to the end of the accompanying post to see the PDF this template produces.\r\n\r\n\r\n[^path]: Notice that the path is relative. The user can, if she wishes, install this in the default Pandoc directory. I don\'t think this is necessary. Just be mindful of wherever the template is placed. Importantly, `~` is used in R to find the home directory (not necessarily the working directory). It is equivalent to saying `/home/steve` in Linux, or `/Users/steve` on a Mac, in my case.\r\n\r\nThe next fields get to the heart of the document itself. `title:` is, intuitively, the title of the manuscript. Do note that fields like `title:` do not have to be in quotation marks, but must be in quotation marks if the title of the document includes a colon. That said, the only reason to use a colon in an article title is if it is followed by a subtitle, hence the optional field (`subtitle:`). Notice I \"comment out\" the subtitle in the above example with a pound sign since this particular document does not have a subtitle. If `thanks:` is included and has an accompanying entry, the ensuing title of the document gets an asterisk and a footnote. This field is typically used to advise readers that the document is a working paper or is forthcoming in a journal.\r\n\r\nThe next field (`author:`) is a divergence from standard YAML, but I think it is useful. I will also confess to pilfering this idea from Kieran Healy\'s template. Typically, multiple authors for a given document are separated by an `\\and` in this field. However, standard LaTeX then creates a tabular field separating multiple authors that is somewhat restrictive and not easy to override. As a result, I use this setup (again, taken from Kieran Healy) to sidestep the restrictive rendering of authors in the standard `\\maketitle` tag. After `author:`, enter `- name:` (no space before the dash) and fill in the field with the first author. On the next line, enter two spaces, followed by `affiliation:` and the institute or university affiliation of the first author.\r\n\r\nDo notice this can be repeated for however many co-authors there are to a manuscript. The rendered PDF will enter each co-author in a new line in a manner similar to journals like *American Journal of Political Science*, *American Political Science Review*, or *Journal of Politics*.\r\n\r\nThe next two fields pertain to the frontmatter of a manuscript. They should also be intuitive for the reader. `abstract` should contain the abstract and `keywords` should contain some keywords that describe the research project. Both fields are optional, though are practically mandatory. Every manuscript requires an abstract and some journals---especially those published by Sage---request them with submitted manuscripts. My template also includes these keywords in the PDF\'s metadata.\r\n\r\n`date` comes standard with R Markdown and you can use it to enter the date of the most recent compile. I typically include the date of the last compile for a working paper in the `thanks:` field, so this field currently does not do anything in my Markdown-LaTeX manuscript template. I include it in my YAML as a legacy, basically.\r\n\r\nThe next items are optional and cosmetic. `geometry:` is a standard option in LaTeX. I set the margins at one inch, and you probably should too. `fontfamily:` is optional, but I use it to specify the Palatino font. The default option is Computer Modern Roman. `fontsize:` sets, intuitively, the font size. The default is 10-point, but I prefer 11-point. `spacing:` is an optional field. If it is set as \"double\", the ensuing document is double-spaced. \"single\" is the only other valid entry for this field, though not including the entry in the YAML metadata amounts to singlespacing the document by default. Notice I have this \"commented out\" in the example code.\r\n\r\nThe final two options pertain to the bibliography. `bibliography:` specifies the location of the .bib file, so the author could make citations in the manuscript. `biblio-style` specifies the type of bibliography to use. You\'ll typically set this as APSR. You could also specify the relative path of [my *Journal of Peace Research* .bst file](http://svmiller.com/miscellany/journal-of-peace-research-bst-file/) if you are submitting to that journal.\r\n\r\n# Getting Started with Markdown Syntax\r\n\r\nThere are a lot of cheatsheets and reference guides for Markdown (e.g. [Adam Prichard](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet), [Assemble](http://assemble.io/docs/Cheatsheet-Markdown.html), [Rstudio](https://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf), [Rstudio again](https://www.rstudio.com/wp-content/uploads/2015/03/rmarkdown-reference.pdf), [Scott Boms](http://scottboms.com/downloads/documentation/markdown_cheatsheet.pdf), [Daring Fireball](https://daringfireball.net/projects/markdown/syntax), among, I\'m sure, several others). I encourage the reader to look at those, though I will retread these references here with a minimal working example below.\r\n\r\n```markdown\r\n\r\n# Introduction\r\n\r\n**Lorem ipsum** dolor *sit amet*. \r\n\r\n- Single asterisks italicize text *like this*. \r\n- Double asterisks embolden text **like this**.\r\n\r\nStart a new paragraph with a blank line separating paragraphs.\r\n\r\n- This will start an unordered list environment, and this will be the first item.\r\n- This will be a second item.\r\n- A third item.\r\n    - Four spaces and a dash create a sublist and this item in it.\r\n- The fourth item.\r\n    \r\n1. This starts a numerical list.\r\n2. This is no. 2 in the numerical list.\r\n    \r\n# This Starts A New Section\r\n## This is a Subsection\r\n### This is a Subsubsection\r\n#### This starts a Paragraph Block.\r\n\r\n> This will create a block quote, if you want one.\r\n\r\nWant a table? This will create one.\r\n\r\nTable Header  | Second Header\r\n------------- | -------------\r\nTable Cell    | Cell 2\r\nCell 3        | Cell 4 \r\n\r\nNote that the separators *do not* have to be aligned.\r\n\r\nWant an image? This will do it.\r\n\r\n![caption for my image](path/to/image.jpg)\r\n\r\n`fig_caption: yes` will provide a caption. Put that in the YAML metadata.\r\n\r\nAlmost forgot about creating a footnote.[^1] This will do it again.[^2]\r\n\r\n[^1]: The first footnote\r\n[^2]: The second footnote\r\n\r\nWant to cite something? \r\n\r\n- Find your biblatexkey in your bib file.\r\n- Put an @ before it, like @smith1984, or whatever it is.\r\n- @smith1984 creates an in-text citation (e.g. Smith (1984) says...)\r\n- [@smith1984] creates a parenthetical citation (Smith, 1984)\r\n\r\nThat\'ll also automatically create a reference list at the end of the document.\r\n\r\n[In-text link to Google](http://google.com) as well.\r\n```\r\n\r\nThat\'s honestly it. Markdown takes the chore of markup from your manuscript (hence: \"Markdown\").\r\n\r\nOn that note, you could easily pass most LaTeX code through Markdown if you\'re writing a LaTeX document. However, you don\'t need to do this (unless you\'re using the math environment) and probably shouldn\'t anyway if you intend to share your document in HTML as well.\r\n\r\n# Using R Markdown with Knitr\r\n\r\nPerhaps the greatest intrigue of R Markdown comes with the [`knitr` package](http://yihui.name/knitr/) provided by @xie2013ddrk. In other words, the author can, if she chooses, do the analysis in the Markdown document itself and compile/execute it in R.\r\n\r\nTake, for example, this simple exercise using the `voteincome` data from the `Zelig` package. Suppose I want to explain the decision to vote using data from this package. I load in the data, clean the data, run the analyses, and present the results as a coefficient plot.\r\n\r\nHere\'s what this code looks like. All I did was create a code display, which starts with three *backticks* (i.e. those ticks next to the number 1 key on your keyboard) and ends with three backticks on another line. On the first line of backticks (i.e. to start the code display) enter `{r, eval=FALSE, tidy=TRUE}`. The `eval=FALSE` option just displays the R code (and does not run it), `tidy=TRUE` wraps long code so it does not run off the page.\r\n\r\nWithin that code display, I enter my R code like this.\r\n\r\n\r\n```{r, eval=FALSE, tidy = TRUE}\r\nsuppressMessages(library(Zelig))\r\nsuppressMessages(library(arm))\r\nsuppressMessages(library(coefplot))\r\n\r\ndata(voteincome)\r\n\r\nvoteincome$z.age <- arm::rescale(voteincome$age)\r\nvoteincome$z.education <- arm::rescale(voteincome$education)\r\nvoteincome$z.income <- arm::rescale(voteincome$income)\r\n\r\nM1 <- glm(vote ~ z.age + female + z.education + z.income,\r\n            data=voteincome, family=binomial)\r\n\r\ncoefplot(M1)\r\n```\r\n\r\nThe implications for workflow are faily substantial. Authors can rather quickly display the code they used to run the analyses in the document itself (likely in the appendix). As such, there\'s little guesswork for reviewers and editors in understanding what the author did in the analyses reported in the manuscript.\r\n\r\nIt doesn\'t end there. In fact, here\'s what happens when `eval=FALSE` is omitted or changed to `eval=TRUE`. Now, the code runs within R. Observe.\r\n\r\n```{r, eval=TRUE, tidy = TRUE, cache=FALSE, fig.cap=\"A Coefficient Plot\"}\r\nsuppressMessages(library(Zelig))\r\nsuppressMessages(library(arm))\r\n\r\n\r\ndata(voteincome)\r\n\r\nvoteincome$z.age <- arm::rescale(voteincome$age)\r\nvoteincome$z.education <- arm::rescale(voteincome$education)\r\nvoteincome$z.income <- arm::rescale(voteincome$income)\r\n\r\nM1 <- glm(vote ~ z.age + female + z.education + z.income,\r\n            data=voteincome, family=binomial)\r\n\r\narm::coefplot(M1)\r\n```\r\n\r\nTo get `knitr` to present the results of a table, add `results=\"asis\"` to the brackets to start the R code chunk. The ensuing output will look like this (though the table may come on the next page).\r\n\r\n```{r, eval=TRUE, tidy = TRUE, size=\"small\", cache=FALSE, results=\"asis\"}\r\nsuppressMessages(library(Zelig))\r\nsuppressMessages(library(stargazer))\r\nsuppressMessages(library(arm))\r\n\r\ndata(voteincome)\r\n\r\nvoteincome$z.age <- arm::rescale(voteincome$age)\r\nvoteincome$z.education <- arm::rescale(voteincome$education)\r\nvoteincome$z.income <- arm::rescale(voteincome$income)\r\n\r\n\r\nM1 <- glm(vote ~ z.age + female + z.education + z.income,\r\n            data=voteincome, family=binomial)\r\n\r\nstargazer(M1, title=\"A Handsome Table\", header=FALSE)\r\n```\r\n\r\nAdding `echo=\"FALSE\"` inside the brackets to start the R chunk will omit the presentation of the R commands. It will just present the table. This provides substantial opportunity for authors in doing their analyses. Now, the analysis and presentation in the form of a polished manuscript can be effectively simultaneous.[^4]\r\n\r\n[^4]: I\'m not sure if I\'m ready to commit to this myself since my workflow is still largely derived from [Rob J. Hyndman\'s example](http://robjhyndman.com/hyndsight/workflow-in-r/). However, *knitr* has endless potential, especially when analyses can stored in cache, saved as chunks, or loaded in the preamble of a document to reference later in the manuscript.\r\n\r\n\r\n\r\n\r\n<!--\r\n# References\r\n\\setlength{\\parindent}{-0.2in}\r\n\\setlength{\\leftskip}{0.2in}\r\n\\setlength{\\parskip}{8pt}\r\n\\vspace*{-0.2in}\r\n\\noindent\r\n-->', '2024-07-11 05:48:32.541000'),
(9, 'GitHub Read Me', 'GitHub_slug', 'github-download\r\n===============\r\n\r\n`github-download` downloads commit comments and select issues metadata, saving the raw JSON and writing summary `.csv` files.\r\n\r\nInstalling\r\n----------\r\n\r\nDownload the `.jar` file [here](/target/github-download-1.0-SNAPSHOT-jar-with-dependencies.jar). It includes all dependencies. You must have the [Java Runtime Environment](http://java.com/en/download/manual.jsp) version 7 or above.\r\n\r\nUsage\r\n-----\r\n\r\n`github-download` can be run from the command line. It has three required flags:\r\n\r\n`-repo`. The full repository name, e.g., `PovertyAction/github-download`.\r\n\r\n`-to`. The directory in which to save the metadata. It will be created if it does not exist already.\r\n\r\n`-token`. The name of a text file that contains solely a GitHub [OAuth token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/). GitHub will supply you a token, which is a single string. You must copy it to a text file, then specify the name of that file to `-token`.\r\n\r\nAll together:\r\n\r\n```\r\njava -jar github-download.jar -repo PovertyAction/github-download -token token.txt -to metadata\r\n```\r\n\r\nIf the name of the `.jar` file is not `github-download.jar`, use the actual filename in the command above, or rename the file as `github-download.jar`. If the file is not in the current working directory, you will have to specify its path.\r\n\r\nNext, specify the metadata to download:\r\n\r\n`-issues`. Download select issues metadata.\r\n\r\n`-cc`. Download commit comments, including in-line notes.\r\n\r\nTo download all supported metadata:\r\n\r\n```\r\njava -jar github-download.jar -repo PovertyAction/github-download -token token.txt -to metadata -issues -cc\r\n```\r\n\r\nYou may see the following warning message, which is safe to ignore:\r\n\r\n```\r\nSLF4J: Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".\r\nSLF4J: Defaulting to no-operation (NOP) logger implementation\r\nSLF4J: See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.\r\n```', '2024-07-11 06:19:03.539000'),
(10, 'Beauty', 'Slug_beauty', '<blockquote class=\"imgur-embed-pub\" lang=\"en\" data-id=\"a/U0NSA4V\"  ><a href=\"//imgur.com/a/U0NSA4V\">idol</a></blockquote><script async src=\"//s.imgur.com/min/embed.js\" charset=\"utf-8\"></script>', '2024-07-11 07:44:47.572000');

-- --------------------------------------------------------

--
-- 資料表結構 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-07-05 08:25:32.894000', '1', 'Post_Title01', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-07-05 08:26:49.760000', '2', 'Post_Title02', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-07-05 08:27:47.814000', '3', 'Post_Title03', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-07-05 08:28:43.315000', '4', 'Post_Title04', 1, '[{\"added\": {}}]', 7, 1),
(5, '2024-07-05 08:29:28.781000', '5', 'Post_Title05', 1, '[{\"added\": {}}]', 7, 1),
(6, '2024-07-11 05:24:22.788000', '6', 'dispaly-html-with-img', 1, '[{\"added\": {}}]', 7, 1),
(7, '2024-07-11 05:35:10.686000', '7', 'New_Post_news', 1, '[{\"added\": {}}]', 7, 1),
(8, '2024-07-11 05:43:06.419000', '7', 'New_Post_news', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1),
(9, '2024-07-11 05:48:32.543000', '8', 'Show Markdown Content', 1, '[{\"added\": {}}]', 7, 1),
(10, '2024-07-11 06:06:54.318000', '7', 'New_Post_news', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1),
(11, '2024-07-11 06:19:03.542000', '9', 'GitHub Read Me', 1, '[{\"added\": {}}]', 7, 1),
(12, '2024-07-11 06:19:46.203000', '9', 'GitHub Read Me', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 1),
(13, '2024-07-11 06:22:40.360000', '8', 'Show Markdown Content', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 1),
(14, '2024-07-11 07:27:03.878000', '8', 'Show Markdown Content', 2, '[]', 7, 1),
(15, '2024-07-11 07:27:11.184000', '8', 'Show Markdown Content', 2, '[]', 7, 1),
(16, '2024-07-11 07:44:47.577000', '10', 'Beauty', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'blog_post', 'guestbook'),
(7, 'blog_post', 'post'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- 資料表結構 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-07-30 07:09:05.334466'),
(2, 'auth', '0001_initial', '2024-07-30 07:09:05.577090'),
(3, 'admin', '0001_initial', '2024-07-30 07:09:05.642017'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-07-30 07:09:05.656349'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-30 07:09:05.732560'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-07-30 07:09:05.806772'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-07-30 07:09:05.854419'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-07-30 07:09:05.870942'),
(9, 'auth', '0004_alter_user_username_opts', '2024-07-30 07:09:05.881546'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-07-30 07:09:05.945172'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-07-30 07:09:05.946879'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-30 07:09:05.959017'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-07-30 07:09:06.006272'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-30 07:09:06.053245'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-07-30 07:09:06.076890'),
(16, 'auth', '0011_update_proxy_permissions', '2024-07-30 07:09:06.090958'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-30 07:09:06.148564'),
(18, 'blog_post', '0001_initial', '2024-07-30 07:09:06.163260'),
(19, 'blog_post', '0002_guestbook', '2024-07-30 07:09:06.189633'),
(20, 'sessions', '0001_initial', '2024-07-30 07:09:06.316428');

-- --------------------------------------------------------

--
-- 資料表結構 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('fu15487kxaf40hggc9cztcvejmpetkib', '.eJxVjEEOwiAQAP_C2RBhKQWP3n0DWdhFqgaS0p6MfzckPeh1ZjJvEXDfStg7r2EhcRFKnH5ZxPTkOgQ9sN6bTK1u6xLlSORhu7w14tf1aP8GBXsZW9Lo2YJnRxFA5-SsAR_dNHsm7e2kdVKocj47ArY6AQNZO0c2iMaIzxfe1zfh:1sPdqA:HV1lBICgnWqhit8My2smE-oIADR-bsEH6QWPtrvR228', '2024-07-19 07:58:46.444000');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 資料表索引 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- 資料表索引 `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- 資料表索引 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- 資料表索引 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `blog_post_guestbook`
--
ALTER TABLE `blog_post_guestbook`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `blog_post_post`
--
ALTER TABLE `blog_post_post`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- 資料表索引 `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- 資料表索引 `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `blog_post_guestbook`
--
ALTER TABLE `blog_post_guestbook`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `blog_post_post`
--
ALTER TABLE `blog_post_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 資料表的限制式 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 資料表的限制式 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

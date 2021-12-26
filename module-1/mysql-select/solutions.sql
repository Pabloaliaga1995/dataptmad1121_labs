--challenge 1--
SELECT a.au_id AS [AUTHOR ID], a.au_lname AS [LAST NAME], a.au_fname AS [FIRST NAME], t.title AS [TITLE], p.pub_name AS [PUBLISHER]
FROM authors as a
    INNER JOIN titleauthor AS ta ON a.au_id = ta.au_id
    INNER JOIN titles AS t ON ta.title_id = t.title_id
    INNER JOIN publishers as p ON t.pub_id = p.pub_id
ORDER BY [AUTHOR ID]

--challenge 2--
SELECT a.au_id AS [AUTHOR ID], a.au_lname AS [LAST NAME], a.au_fname AS [FIRST NAME], t.title AS [TITLE], p.pub_name AS [PUBLISHER]
    ,COUNT(DISTINCT t.pub_id) AS [TITLE COUNT]
FROM authors as a
    INNER JOIN titleauthor AS ta ON a.au_id = ta.au_id
    INNER JOIN titles AS t ON ta.title_id = t.title_id
    INNER JOIN publishers as p ON t.pub_id = p.pub_id
GROUP BY p.pub_name, a.au_id, a.au_lname, a.au_fname,t.title
ORDER BY [TITLE COUNT]

--challenge 3--
SELECT TOP(3) a.au_id AS [AUTHOR ID], a.au_lname AS [LAST NAME], a.au_fname AS [FIRST NAME], SUM(s.qty) AS [TOTAL]
FROM authors as a
    INNER JOIN titleauthor AS ta ON a.au_id = ta.au_id
    INNER JOIN sales as s ON ta.title_id = s.title_id
GROUP BY a.au_id, a.au_lname, a.au_fname
ORDER BY 4 DESC

--challenge 4--
SELECT a.au_id AS [AUTHOR ID], a.au_lname AS [LAST NAME], a.au_fname AS [FIRST NAME], SUM(s.qty) AS [TOTAL]
FROM authors as a
    FULL JOIN titleauthor AS ta ON a.au_id = ta.au_id
    FULL JOIN sales as s ON ta.title_id = s.title_id
GROUP BY a.au_id, a.au_lname, a.au_fname
ORDER BY 4 DESC
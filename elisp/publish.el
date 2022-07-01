(require 'ox-publish)

(setq org-publish-project-alist
      '(
	("posts"
	 :base-directory "~/jd-m.github.io/posts-org/"
	 :base-extension "org"
	 :publishing-directory "~/jd-m.github.io/posts-html/"
	 :recursive nil
	 :publishing-function devo-html-publish-to-html
	 :headline-levels 4
	 :with-toc nil
	 :section-numbers nil
	 :html-head   "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
  <script src=\"../jquery-3.6.0.min.js\"></script>
  
   <link rel=\"stylesheet\" href=\"../css/site.css\">"
	 )
	
	("index"
	 :base-directory "~/jd-m.github.io/posts-org/"
	 :base-extension "org_index"
	 :publishing-directory "~/jd-m.github.io/posts-html/"
	 :recursive nil
	 :publishing-function devo-index-html-publish-to-html
	 :headline-levels 4
	 :with-toc nil
	 :section-numbers nil
	 :html-head   "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
  <script src=\"../jquery-3.6.0.min.js\"></script>
  
   <link rel=\"stylesheet\" href=\"../css/site.css\">"
	 )

	("devo-overflow" :components ("posts" "index"))
	))

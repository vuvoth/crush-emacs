(use-package prettier-js
  :ensure t)
(require 'prettier-js)
(add-hook 'js2-mode-hook 'prettier-js-mode)


;; (toggle-frame-fullscreen)

(use-package all-the-icons
  :ensure t)


(use-package treemacs
  :ensure t)
;; why not Gia Binh ? i dont know. :'(


(treemacs-create-theme "Kei"
  :config
  (progn
    (treemacs-create-icon :icon " " :extensions (root))
    (treemacs-create-icon :icon " " :extensions (dir-closed))
    (treemacs-create-icon :icon " " :extensions (dir-open))
    (treemacs-create-icon :icon " " :extensions ("yaml" "yml" "c" "c++" "java" "json" "js" "ts" "go" "py" fallback))
    (treemacs-create-icon :icon "* " :extensions (tag-leaf))
    (treemacs-create-icon :icon "- " :extensions (tag-open))
    (treemacs-create-icon :icon "+ " :extensions (tag-closed))
    (treemacs-create-icon :icon "b " :extensions (boolean-data) :fallback "-")
    (treemacs-create-icon :icon "Class.png" :extensions (class) :fallback "-")
    (treemacs-create-icon :icon "ColorPalette.png" :extensions (color-palette) :fallback "-")
    (treemacs-create-icon :icon " " :extensions (constant) :fallback "-")
    (treemacs-create-icon :icon "Document.png" :extensions (document) :fallback "-")
    (treemacs-create-icon :icon "Enumerator.png" :extensions (enumerator) :fallback "-")
    (treemacs-create-icon :icon "EnumItem.png" :extensions (enumitem) :fallback "-")
    (treemacs-create-icon :icon "Event.png" :extensions (event) :fallback "-")
    (treemacs-create-icon :icon "Field.png" :extensions (field) :fallback "-")
    (treemacs-create-icon :icon "Indexer.png" :extensions (indexer) :fallback "-")
    (treemacs-create-icon :icon "IntelliSenseKeyword.png" :extensions (intellisense-keyword) :fallback "-")
    (treemacs-create-icon :icon "Interface.png" :extensions (interface) :fallback "-")
    (treemacs-create-icon :icon "LocalVariable.png" :extensions (localvariable) :fallback "-")
    (treemacs-create-icon :icon " " :extensions (method) :fallback "-")
    (treemacs-create-icon :icon "Namespace.png" :extensions (namespace) :fallback "-")
    (treemacs-create-icon :icon "Numeric.png" :extensions (numeric) :fallback "-")
    (treemacs-create-icon :icon "Operator.png" :extensions (operator) :fallback "-")
    (treemacs-create-icon :icon "Property.png" :extensions (property) :fallback "-")
    (treemacs-create-icon :icon "Snippet.png" :extensions (snippet) :fallback "-")
    (treemacs-create-icon :icon "String.png" :extensions (string) :fallback "-")
    (treemacs-create-icon :icon "Structure.png" :extensions (structure) :fallback "-")
    (treemacs-create-icon :icon "Template.png" :extensions (template) :fallback "-")
    (treemacs-create-icon :icon "collapsed.png" :extensions (collapsed) :fallback "-")
    (treemacs-create-icon :icon "expanded.png" :extensions (expanded) :fallback "-")
    (treemacs-create-icon :icon "classfile.png" :extensions (classfile) :fallback "-")
    (treemacs-create-icon :icon "default_folder_opened.png" :extensions (default-folder-opened) :fallback "-")
    (treemacs-create-icon :icon "default_folder.png" :extensions (default-folder) :fallback "-")
    (treemacs-create-icon :icon "default_root_folder_opened.png" :extensions (default-root-folder-opened) :fallback "-")
    (treemacs-create-icon :icon "default_root_folder.png" :extensions (default-root-folder) :fallback "-")
    (treemacs-create-icon :icon "file_type_class.png" :extensions ("class") :fallback "-")
    (treemacs-create-icon :icon "file_type_jar.png" :extensions (file-type-jar) :fallback "-")
    (treemacs-create-icon :icon "folder-open.png" :extensions (folder-open) :fallback "-")
    (treemacs-create-icon :icon "folder.png" :extensions (folder) :fallback "-")
    (treemacs-create-icon :icon "folder_type_component_opened.png" :extensions (folder-type-component-opened) :fallback "-")
    (treemacs-create-icon :icon "folder_type_component.png" :extensions (folder-type-component) :fallback "-")
    (treemacs-create-icon :icon "folder_type_library_opened.png" :extensions (folder-type-library-opened) :fallback "-")
    (treemacs-create-icon :icon "folder_type_library.png" :extensions (folder-type-library) :fallback "-")
    (treemacs-create-icon :icon "folder_type_maven_opened.png" :extensions (folder-type-maven-opened) :fallback "-")
    (treemacs-create-icon :icon "folder_type_maven.png" :extensions (folder-type-maven) :fallback "-")
    (treemacs-create-icon :icon "folder_type_package_opened.png" :extensions (folder-type-package-opened) :fallback "-")
    (treemacs-create-icon :icon "folder_type_package.png" :extensions (folder-type-package) :fallback "-")
    (treemacs-create-icon :icon "icon-create.png" :extensions (icon-create) :fallback "-")
    (treemacs-create-icon :icon "icon-flat.png" :extensions (icon-flat) :fallback "-")
    (treemacs-create-icon :icon "icon-hierarchical.png" :extensions (icon-hierarchical) :fallback "-")
    (treemacs-create-icon :icon "icon-link.png" :extensions (icon-link) :fallback "-")
    (treemacs-create-icon :icon "icon-refresh.png" :extensions (icon-refresh) :fallback "-")
    (treemacs-create-icon :icon "icon-unlink.png" :extensions (icon-unlink) :fallback "-")
    (treemacs-create-icon :icon "jar.png" :extensions (jar) :fallback "-")
    (treemacs-create-icon :icon "library.png" :extensions (library) :fallback "-")
    (treemacs-create-icon :icon "packagefolder-open.png" :extensions (packagefolder-open) :fallback "-")
    (treemacs-create-icon :icon "packagefolder.png" :extensions (packagefolder) :fallback "-")
    (treemacs-create-icon :icon "package.png" :extensions (package) :fallback "-")
    (treemacs-create-icon :icon "project.png" :extensions (java-project) :fallback "-")
    
    ;; (treemacs-create-icon :icon "error.png"           :extensions (error)      :fallback (propertize "• " 'face 'font-lock-string-face))
    ;; (treemacs-create-icon :icon "warning.png"         :extensions (warning)    :fallback (propertize "• " 'face 'font-lock-string-face))
    ;; (treemacs-create-icon :icon "info.png"            :extensions (info)       :fallback (propertize "• " 'face 'font-lock-string-face))
    )
  )

(treemacs-load-theme "Kei")

(setq lsp-treemacs-theme "Kei")

(treemacs-filewatch-mode +1)

(setq treemacs-space-between-root-nodes nil)
(setq treemacs--icon-size 12)

(add-hook 'prog-mode-hook 'linum-mode)
(global-hl-line-mode +1)

(tool-bar-mode -1)

(toggle-scroll-bar -1)
(menu-bar-mode -1)
(load-theme 'manoj-dark t)

(set-face-attribute 'hl-line nil :foreground nil :background "gray13")

(setq linum-format "%3d ")

(fringe-mode '(8 . 0))
;; Set default font
(set-face-attribute 'default nil
                    :family "Menlo"
                    :height 120
                    :weight 'normal
                    :width 'normal)

;;Neotree 
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))


;; Display startup message
(setq initial-scratch-message
"
*I give up everything or I will have nothing*
  
   /You, you, you're the one who comes and breaks the rule/
   /breaks the rule/
   /I, I, I have always been acting a fool/
   /and I know it's not cool/
   /choose ego over u/
   /even I know the truth/
   /I love you/

   /Don't care, don't hear/
   /what they say, they do/ 
   /to your life, your story./

   *You might not... be the first, or the last, but the best...*

                                                         Infinity
")

(setq inhibit-startup-message t)

(setq initial-major-mode 'org-mode)
(setq org-hide-emphasis-markers t)


(provide 'interface)

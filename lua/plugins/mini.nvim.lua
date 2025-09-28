-- ================================================================================================
-- TITLE : mini.nvim
-- LINKS :
--   > github : https://github.com/echasnovski/mini.nvim
-- ABOUT : Library of 40+ independent Lua modules.
-- ================================================================================================

return {
  -- ============================================================================================
  -- MINI.AI - Étend les objets textuels avec des sélections intelligentes
  -- ============================================================================================
  -- Améliore les objets textuels natifs de Vim (iw, aw, i", a", etc.) avec des capacités avancées
  -- Permet des sélections plus intelligentes autour de parenthèses, guillemets, balises, etc.

  -- KEYMAPS PRINCIPAUX :
  --   - Utilise les mêmes touches que Vim natif mais avec plus d'intelligence
  --   - `vi"` : sélectionne à l'intérieur des guillemets doubles
  --   - `va)` : sélectionne autour des parenthèses
  --   - `dif` : supprime à l'intérieur d'une fonction
  --   - `cit` : change à l'intérieur d'une balise HTML/XML
  { "echasnovski/mini.ai", version = "*", opts = {} },

  -- ============================================================================================
  -- MINI.COMMENT - Système de commentaires intelligent
  -- ============================================================================================
  -- Permet de commenter/décommenter facilement du code avec détection automatique du type
  -- Supporte les commentaires en ligne et en bloc selon le langage

  -- KEYMAPS PRINCIPAUX :
  --   - `gcc` : commente/décommente la ligne courante
  --   - `gc` en mode visuel : commente/décommente la sélection
  --   - `gcA` : ajoute un commentaire à la fin de la ligne et passe en mode insertion
  --   - `gco` : ajoute un commentaire sur une nouvelle ligne en dessous
  --   - `gcO` : ajoute un commentaire sur une nouvelle ligne au dessus
  { "echasnovski/mini.comment", version = "*", opts = {} },

  -- ============================================================================================
  -- MINI.MOVE - Déplacement de lignes et blocs de code
  -- ============================================================================================
  -- Permet de déplacer facilement des lignes ou des blocs sélectionnés vers le haut/bas
  -- Très utile pour réorganiser rapidement le code sans copier-coller

  -- KEYMAPS PRINCIPAUX :
  --   - `Alt+h` : déplace la ligne/sélection vers la gauche (désindente)
  --   - `Alt+j` : déplace la ligne/sélection vers le bas
  --   - `Alt+k` : déplace la ligne/sélection vers le haut
  --   - `Alt+l` : déplace la ligne/sélection vers la droite (indente)
  { "echasnovski/mini.move", version = "*", opts = {} },

  -- ============================================================================================
  -- MINI.SURROUND - Gestion des délimiteurs environnants
  -- ============================================================================================
  -- Permet d'ajouter, supprimer, remplacer facilement des délimiteurs (quotes, parenthèses, etc.)
  -- Inspiré du plugin vim-surround mais en version modernisée

  -- KEYMAPS PRINCIPAUX :
  --   - `sa` + mouvement + délimiteur : ajoute des délimiteurs (ex: `saiw"` entoure le mot de guillemets)
  --   - `sd` + délimiteur : supprime des délimiteurs (ex: `sd"` supprime les guillemets)
  --   - `sr` + ancien + nouveau : remplace délimiteurs (ex: `sr"'` remplace " par ')
  --   - `sh` : met en surbrillance les délimiteurs proches
  { "echasnovski/mini.surround", version = "*", opts = {} },

  -- ============================================================================================
  -- MINI.CURSORWORD - Surbrillance du mot sous le curseur
  -- ============================================================================================
  -- Met automatiquement en surbrillance toutes les occurrences du mot sous le curseur
  -- Aide à visualiser rapidement l'utilisation d'une variable dans le code
  --
  -- FONCTIONNEMENT :
  --   - Pas de keymaps : fonctionne automatiquement
  --   - Place le curseur sur un mot → toutes les occurrences sont surlignées
  --   - Utile pour repérer l'usage des variables, fonctions, etc.
  { "echasnovski/mini.cursorword", version = "*", opts = {} },

  -- ============================================================================================
  -- MINI.INDENTSCOPE - Visualisation de la portée d'indentation
  -- ============================================================================================
  -- Affiche une ligne verticale pour montrer la portée du bloc de code courant
  -- Aide à comprendre la structure et l'imbrication du code
  --
  -- FONCTIONNEMENT :
  --   - Pas de keymaps : fonctionne automatiquement
  --   - Affiche une ligne colorée sur la gauche pour délimiter le bloc courant
  --   - Très utile pour Python, YAML, ou tout langage sensible à l'indentation
  { "echasnovski/mini.indentscope", version = "*", opts = {} },

  -- ============================================================================================
  -- MINI.PAIRS - Auto-complétion des délimiteurs
  -- ============================================================================================
  -- Ferme automatiquement les parenthèses, crochets, guillemets, etc.
  -- Inclut une logique intelligente pour éviter les doublons
  --
  -- FONCTIONNEMENT :
  --   - Tape `(` → ajoute automatiquement `)`
  --   - Tape `"` → ajoute automatiquement `"` de fermeture
  --   - Tape `)` quand déjà présent → passe par dessus au lieu de doubler
  --   - Supporte aussi les multi-caractères comme `/**` → `**/` en JS/CSS
  { "echasnovski/mini.pairs", version = "*", opts = {} },

  -- ============================================================================================
  -- MINI.TRAILSPACE - Gestion des espaces en fin de ligne
  -- ============================================================================================
  -- Met en surbrillance et permet de supprimer les espaces inutiles en fin de ligne
  -- Essentiel pour maintenir un code propre et éviter les conflits git

  -- KEYMAPS PRINCIPAUX :
  --   - `<Leader>cw` : supprime tous les trailing spaces du fichier

  -- FONCTIONNEMENT :
  --   - Met en surbrillance les espaces en fin de ligne (souvent en rouge)
  --   - Peut être configuré pour nettoyer automatiquement à la sauvegarde
  { "echasnovski/mini.trailspace", version = "*", opts = {} },

  -- ============================================================================================
  -- MINI.BUFREMOVE - Suppression intelligente de buffers
  -- ============================================================================================
  -- Permet de fermer des buffers sans perturber la disposition des fenêtres
  -- Évite le comportement par défaut de Vim qui ferme aussi les splits

  -- KEYMAPS PRINCIPAUX :
  --   - Généralement mappé manuellement, par exemple :
  --   - `<Leader>bd` ou `<Leader>q` : ferme le buffer courant sans fermer la fenêtre
  --   - Garde la disposition des splits intacte
  { "echasnovski/mini.bufremove", version = "*", opts = {} },

  -- ============================================================================================
  -- MINI.NOTIFY - Système de notifications amélioré
  -- ============================================================================================
  -- Remplace le système de messages par défaut par des notifications plus élégantes
  -- Affiche les messages de manière non-intrusive avec gestion de l'historique

  -- FONCTIONNEMENT :
  --   - Pas de keymaps spécifiques
  --   - Remplace `vim.notify()` par une version améliorée
  --   - Messages s'affichent dans un coin sans bloquer l'édition
  --   - Utile pour les messages de LSP, plugins, etc.
  { "echasnovski/mini.notify", version = "*", opts = {} },
}

GITHASH=$(git rev-parse @~1)
git filter-branch --commit-filter ' if [ $GIT_COMMITTER_NAME == "TNThacker2015" ]; then export GIT_COMMITTER_NAME="User1"; export GIT_COMMITTER_EMAIL="user1@mail.com"; else export GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"; export GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"; export GIT_COMMITTER_DATE="$GIT
_AUTHOR_DATE"; git commit-tree "$@"; fi' -- $GITHASH..HEAD
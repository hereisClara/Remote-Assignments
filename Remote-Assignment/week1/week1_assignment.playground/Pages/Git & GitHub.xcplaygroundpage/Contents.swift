import Foundation

//1️⃣ GitHub Links:
// https://github.com/hereisClara/Remote-Assignments.git

//2️⃣ Explain the meanings of Git and GitHub commands
    //a. git status
    // 檢視目前推送的狀態，看看是否有更改後還沒新增到staging area的檔案。
    
    //b. git diff
    // 檢查每次更新與前次的內容差異，會在最前方以加減號與不同的色彩做標示。
    
    //c. git add
    // 將新增的內容或更改保留到staging area暫存。

    //d. git reset
    // 取消上一次的更新，回到原本的檔案面貌。

    //e. git commit
    // 推送到repository做長久保留，並且需要留下更新的狀況概要，以便後續檢索歷史版本。

    //f. git log
    // 可以查看git commit的歷史紀錄，有各種不同的查看方式與檢索功能可以使用。

    //g. git branch
    // 「分支」。針對同一來源，可能同時有多人需要在本地機台進行作業，所以會產生分支，並且在達成特定進度或要求後再與其他分支結合（merge）。

    //h. git merge
    // 「融合」。在眾人完成協作後，融合不同的版本為合併版本。

    //i. git push [ repo_name ] [ branch_name ]
    // 將分支上傳到github的repo上。

    //j. git remote
    // 以本地檔案追蹤遠端檔案。

    //k. fork
    // 將其他帳戶的repo複製一個副本到自己的github上。

    //l. (Advanced) git rebase
    // 重新建立分支的基準點，把原本的基準點換掉。

    //m. (Advanced) git cherry-pick
    // 可以選擇性合併其他分支的特定幾個commit。

    //n. (Advanced) git reflog
    // 在git reset之後，想要復原資料，可以透過reflog叫出以前更新的SHA-1編號，從而完成復原。

    //o. (Advanced) git tag
    // git tag是針對特定一次commit的標記。

//3️⃣ how to establish a GitHub repo and how to upload the local projects to GitHub:

    // ESTABLISH A GITHUB REPO:進入GitHub頁面，點擊右上角「＋」號，選擇new repository，輸入名稱、確定隱私設定，點擊右下角create repository，就可以創建新的遠端repo。

    // UPLOAD LOCAL PROJECTS TO GITHUB:首先打開終端機（terminal），進入目標本地資料夾（cd 資料夾），輸入「git init」（啟動git），接下來可以用「git status」查看當下的推送狀態，確認有哪些變更是可以推送的。確認之後，有兩種選擇，「git add .」可以把當前所見更新一併上傳，「git add 檔名」可以把特定檔案上傳，add之後的檔案都會出現在staging area暫存。接著，輸入「git commit -m "更新概要"」，將此次更新儲存到本地repo。接下來要將本地與遠端連動，輸入「git remote add origin URL（github repository中的HTTPS/SSL連結）」，之後再輸入Username跟PAT，就可以順利與遠端連結。要將本地project推送到github repository，輸入「git push --set-upstream origin 分支名稱」，就可以完成推送。如果推送失敗，可以透過「git remote -v」檢查推送網址是否一致。




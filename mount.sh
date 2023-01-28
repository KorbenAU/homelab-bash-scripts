valhost=$(hostname)

printf "Host $valhost \n"

# ====================
# =    Downloads     =
# ====================

if [ $valhost = "n1" ]
then
    mount -t nfs 192.168.1.5:/mnt/tank/Downloads /home/gy/qbit/nas
    printf "mounted Downloads to  /home/gy/qbit/nas \n"
fi

if [ $valhost = "n1" ] || [ $valhost = "n2" ] || [ $valhost = "n4" ]
then
    mount -t nfs 192.168.1.5:/mnt/tank/Downloads /nas/NFS/Downloads
    printf "mounted Downloads to  /nas/NFS/Downloads \n"
fi


# ====================
# =      GitLab      =
# ====================

if [ $valhost = "n1" ]
then
    mount -t nfs 192.168.1.5:/mnt/tank/GitLab /nas/NFS/GitLab
    printf "mounted GitLab to  /nas/NFS/GitLab \n"
fi

# ====================
# =     NextCloud    =
# ====================

if [ $valhost = "n1" ] || [ $valhost = "n2" ] || [ $valhost = "n4" ]
then
    mount -t nfs 192.168.1.5:/mnt/tank/NextCloud /nas/NFS/NextCloud
    printf "mounted NextCloud to  /nas/NFS/NextCloud \n"
fi

# ====================
# =     projects     =
# ====================

if [ $valhost = "n1" ] || [ $valhost = "n2" ] || [ $valhost = "n4" ] || [ $valhost = "pc" ]
then
    mount -t nfs 192.168.1.5:/mnt/tank/projects /nas/NFS/projects
    printf "mounted projects to  /nas/NFS/projects \n"
fi

# ====================
# =      volumes     =
# ====================

if [ $valhost = "n1" ] || [ $valhost = "n2" ] || [ $valhost = "n3" ] || [ $valhost = "n4" ] || [ $valhost = "pc" ]
then
    mount -t nfs 192.168.1.5:/mnt/tank/volumes /nas/NFS/volumes
    printf "mounted volumes to  /nas/NFS/volumes \n"
fi

valhost=$(hostname)

printf "Host $valhost \n"

if [ $valhost = "pc" ]
then
    mount -t nfs 192.168.1.6:/mnt/tank2/Media/TV /data/downloads/TV-NAS
    printf "mount -t nfs 192.168.1.6:/mnt/tank2/Media/TV /data/downloads/TV-NAS \n"

    mount -t nfs 192.168.1.6:/mnt/tank2/Media/Movies /data/downloads/Movies-NAS
    printf "mount -t nfs 192.168.1.6:/mnt/tank2/Media/Movies /data/downloads/Movies-NAS \n"

    mount -t nfs 192.168.1.6:/mnt/tank2/Media/Music /data/downloads/Music-NAS
    printf "mount -t nfs 192.168.1.6:/mnt/tank2/Media/Music /data/downloads/Music-NAS \n"

    mount -t nfs 192.168.1.6:/mnt/tank/Volumes /nas/NFS/Volumes
    printf "mount -t nfs 192.168.1.6:/mnt/tank/Volumes /nas/NFS/Volumes \n"

    mount -t nfs 192.168.1.6:/mnt/tank/Projects /nas/NFS/Projects
    printf "mount -t nfs 192.168.1.6:/mnt/tank/Projects /nas/NFS/Projects \n"
fi

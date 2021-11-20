import pafy


def pathFunc(video,vAstreams):# vAstreams= video and audio streams
	num= int(input("Enter the NUMBER which you want to download: "))
	path = input("Enter download path (for SKIP press enter): ")
	print("File Name: ",video.title)
	if path == "":
		filename = vAstreams[num-1].download(quiet=False)
	else:
		filename = vAstreams[num-1].download(filepath=path,quiet=False)
	print("Download sucessfully !")


def audioFunc(video):
	audiostreams = video.audiostreams
	i=1
	print("\t\t\t\tAvailable Audio Quality")
	for a in audiostreams:
	    print(f"{i}) ",a.bitrate, a.extension, a.get_filesize())
	    i=i+1
	pathFunc(video,audiostreams)


def videoFunc(video):
	videostreams = video.streams
	print("\t\t\t\tAvailable Video Quality")
	i=1
	for v in videostreams:
	    print(f"Number {i}",v.resolution, v.extension, v.get_filesize())
	    i=i+1
	pathFunc(video,videostreams)

def downFunc(down,video):
	if down == "a":
		audioFunc(video)
	elif down == "v":
		videoFunc(video)
	else:
		print("Invalid *(Please check before enter)")
	
if __name__ == "__main__" :

	# url = "https://www.youtube.com/watch?v=USBIGzkFI-Q"
	url= input("Enter url of the video:")
	video = pafy.new(url)
	print("For video enter: v \nFor audio enter: a")
	down = input("Enter:")
	downFunc(down,video)


	

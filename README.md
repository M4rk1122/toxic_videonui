# Introduction

This is a simple nui. This is a completely client-side script.

# Install & Usage

- Download the latest version from github.
- Unzip the files, then rename the folder to 'toxic_videonui'.
- Upload the script to the resources folder on your server.
- Add start toxic_videonui to your your server.cfg file.
- Upload the video that suits you to the 'toxic_videonui/html/video' folder. IMPORTANT, the file extension should be MP4.
- Then use the exports in the script you like as described below.

Use it in good health!

# Exports for examples

exports['toxic_videonui']:PlayVideo('video.mp4') -- It will bring up the NUI for that client and start playing the video you specified for it.

exports['toxic_videonui']:StopVideo(true) -- Pauses the video.

exports['toxic_videonui']:SetNuiDisplay(true) -- It brings out the NUI as it was before it was closed.

exports['toxic_videonui']:SetNuiDisplay(false) -- Hides the NUI, but does not reset the video.

# Permits

All rights reserved, not for sale, free for anyone to use.

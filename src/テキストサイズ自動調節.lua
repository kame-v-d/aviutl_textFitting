--track0:拡大率,1,1000,100,1
--track1:余白,0,9999,0,1

camZ = -1024
zScale = (camZ - obj.z) / camZ

screenW = obj.screen_w - obj.track1
zoomRate = obj.getvalue("zoom")/100
thresRate = obj.track0/100
thresholdW = screenW * zoomRate / thresRate

objectW = obj.w
if (obj.w < thresholdW) then
    objectW = thresholdW
end

obj.zoom = screenW * zScale / objectW
function [dataImages] = dataToImages(data)
	data_size = size(data,1);
	dataImages = uint8(zeros(data_size,32,32,3));
	for i=1:data_size
		dataImages(i,:,:,1) = reshape(data(i,1:1024),32,32);
		dataImages(i,:,:,2) = reshape(data(i,1025:2048),32,32);
		dataImages(i,:,:,3) = reshape(data(i,2048:3072),32,32);
	endfor
	
	%to show single image: imshow(image/256);
end

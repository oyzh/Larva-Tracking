function cast_max_frames_t = cast_max_frames(headtheta, lambda)
    max = peakdet(headtheta, lambda);
    min = peakdet(-headtheta, lambda);
    cast_max_frames_t = [max(:,1);min(:,1)];
    cast_max_frames_t = sort(cast_max_frames_t);
end


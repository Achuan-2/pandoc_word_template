-- image-title-to-caption.lua
-- A Pandoc Lua filter to set image title as caption
-- Format: ![alt](src "title")

-- Function to create a new caption from text
function create_caption(text)
    -- For simple captions, we can just use a Str element
    if text:find("^%s*$") then
        -- Empty caption
        return {}
    else
        -- Non-empty caption
        return {pandoc.Str(text)}
    end
end

-- Function to process the image and set title as caption
function process_image(img)

    -- Check if title exists and is not empty
    if img.title and img.title ~= "" then
        
        -- Set the title as the image caption
        img.caption = create_caption(img.title)
        
        -- Clear the title to avoid duplication
        img.title = ""
        
        -- Return the modified image
        return img
    end
    
    -- If no title, return the image unchanged
    return img
end

-- Handler for standalone images
function Image(img)
    return process_image(img)
end

-- Handler for Figure blocks (which may contain images)
function Figure(fig)
    -- Check if the figure has an image
    for i, block in ipairs(fig.content) do
        if block.t == "Plain" then
            for j, inline in ipairs(block.content) do
                if inline.t == "Image" then
                    -- Process the image
                    local processed_image = process_image(inline)
                    -- Update the image in the figure
                    block.content[j] = processed_image
                    
                    -- Also update the figure caption
                    if processed_image.caption and #processed_image.caption > 0 then
                        -- Extract the caption text
                        local caption_text = pandoc.utils.stringify(processed_image.caption)
                        -- Update the figure caption
                        fig.caption = create_caption(caption_text)
                    end
                end
            end
        end
    end
    
    return fig
end

-- Return the filter
return {{Image = Image}, {Figure = Figure}}

# Define the path to your list of images
$listPath = "E:\Flutter\pod_mood\assets\images\use_images.txt"
$imageDirectory = "E:\Flutter\pod_mood\assets\images"

# Get the list of images to keep
$imagesToKeep = Get-Content $listPath

# Define the file extensions you want to check
$fileExtensions = @("*.jpg", "*.png", "*.jpeg", "*.svg")

# Loop through each file extension
foreach ($extension in $fileExtensions) {
    # Get all images in the directory with the current extension
    $allImages = Get-ChildItem -Path $imageDirectory -Filter $extension
    
    # Loop through each image in the directory
    foreach ($image in $allImages) {
        $imageName = [System.IO.Path]::GetFileNameWithoutExtension($image.Name)
        
        # If the image is not in the list of images to keep, delete it
        if ($imagesToKeep -notcontains $imageName) {
            Remove-Item $image.FullName -Force
        }
    }
}

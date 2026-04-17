$path = "c:\Users\Nanda NurFaiz\Downloads\website_toefl\index.html"
$content = [System.IO.File]::ReadAllText($path)
$content = [regex]::Replace($content, '\s*\[cite:[^\]]+\]', '')
$content = $content.Replace('<span class="nav-icon">✍️</span><span class="nav-label">Grammar</span>', 'Grammar')
$content = $content.Replace('<span class="nav-icon">📖</span><span class="nav-label">Reading</span>', 'Reading')
$content = $content.Replace('<span class="nav-icon">🎧</span><span class="nav-label">Listening</span>', 'Listening')
$content = $content.Replace('✅ ', '')
[System.IO.File]::WriteAllText($path, $content, (New-Object System.Text.UTF8Encoding($False)))

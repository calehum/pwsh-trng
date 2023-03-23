$death = {
    Write-Host 'You perish...re-roll your character' -ForegroundColor Red
    Try {
        & 'C:\Users\calehum\workspaces\py-testing\death.py'
    } Catch {
        Write-Host "Error calling Python script: $($Error[0].Exception.Message)" -ForegroundColor Red
        # Log the error message to a file or other destination here.
    }
}
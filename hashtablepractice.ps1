$Users=@{
johns='John Smith'
bobt='Bob Test'
stevep='Steve Pickle'
}

$Users

$Users.GetType()

$Users.Keys

$Users.Values

$Users['bobt']

$Users.bobt

$Users.Add('mikec','Mike Cummings')

$Users

$Users['test']='Test User'

$Users.ContainsKey('testing')

$Users.ContainsKey('stevep')

$Users.Remove('stevep')

$Users['bobt']='Bob Tester'

#############################
# CUSTOM OBJECTS
#############################

$dog=New-Object -TypeName PSCustomObject

Add-Member -InputObject $dog -MemberType NoteProperty -Name 'Name' -Value 'Maya'
Add-Member -InputObject $dog -MemberType NoteProperty -Name 'Breed' -Value 'Boxer'
$dog

$cat=[PSCustomObject]@{
    Name = 'Frankie';
    Breed= 'Persian'
}
$cat

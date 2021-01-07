<#
    .SYNOPSIS
        Operations on SectionGroup Collections:
            - can contain sections
            - can contain sectiongroups
#>
function Get-OneNoteSectionGroupCollectionSectionGroupCollection {
    <#
        .SYNOPSIS
            Returns all section group collection in a section group collection
    #>
    param(
        [System.Array]$SectionGroupCollection
    )
    return $SectionGroupCollection | Where-Object {$null -ne $_.SectionGroup}
}

function Get-OneNoteSectionGroupCollectionSectionCollection {
    <#
        .SYNOPSIS
            Returns all sectioncollection in a section group collection
    #>
    param(
        [System.Array]$SectionGroupCollection
    )
    return $SectionGroupCollection |Where-Object {$null -ne $_.Section}
}
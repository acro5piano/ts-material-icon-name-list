# ts-material-icon-name-list

TypeScript type definition for material icons

# What it does

This library fetch icon names [from the official repository](https://raw.githubusercontent.com/google/material-design-icons/master/font/MaterialIcons-Regular.codepoints), and transform them into a TypeScript definition.

# Usage

First, install it:

```
yarn add ts-material-icon-name-list
```

Then import the type in your TypeScript code:

```typescript
import { MaterialIconName } from 'ts-material-icon-name-list'

type IconButtonProps = {
  onClick: () => any
  iconName: MaterialIconName
}

export const IconButton = ({ onClick, iconName }: IconButtonProps) => {
  return (
    <button className="hover:bg-gray-100 p-1 material-icons" onClick={onClick}>
      {iconName}
    </button>
  )
}
```

If you want the icon name is Kebab Case (e.g. `add-link`, not `add_link`), import `/kebab` instead.

```typescript
import { MaterialIconName } from 'ts-material-icon-name-list/kebab'
```

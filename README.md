# prisma-example-pagination

## Install prisma dependencies:
```
npm install prisma
npm i @prisma/client
```

## Initialize the datasource for prisma project:
This will create the prisma directory and the schema.prisma file
```
npx prisma init --datasource-provider sqlite
```

## Add model after initializing risma with datasource

model Model {
  id        String   @id @default(cuid())
  createdAt DateTime @default(now())
  updatedAt DateTime @updatedAt
}


## Then migrate
```
npx prisma migrate dev --name migration_name
```
## Seed data
```
npx prisma db seed —-preview-feature
```

## View data with prisma studio
```
npx prisma studio  
```

## Other dependencies
faker
prisma-studio
ts-node
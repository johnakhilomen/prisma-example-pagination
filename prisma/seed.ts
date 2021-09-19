import { PrismaClient } from ".prisma/client";

import * as faker from "faker";

const prisma = new PrismaClient();
const fakeUsers: any = [];
const desiredFakeUsers: number = 1000;

const createFakerUser = () => ({
    first_name: faker.name.firstName(),
    last_name: faker.name.lastName(),
    Criminal: faker.lorem.word(),    
    Blood_group: faker.lorem.word(),
    height: 15,
    weight: 32,
    Evidence: faker.lorem.word()

  });

  for (let i = 0; i < desiredFakeUsers; i++) {
    fakeUsers.push(createFakerUser());
  }

async function main() {
    for (let fdetail of fakeUsers) {
        await prisma.forensicDetails.create({data: fdetail})
    }
}

main()
.catch((e)=> {
    console.log(e);
    // process.exit(1);
})
.finally(async () => {
    await prisma.$disconnect();
})
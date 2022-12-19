import { Test, TestingModule } from "@nestjs/testing";
import { FormMetadataController } from "./form-metadata.controller";

describe("FormMetadataController", () => {
  let controller: FormMetadataController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [FormMetadataController],
    }).compile();

    controller = module.get<FormMetadataController>(FormMetadataController);
  });

  it("should be defined", () => {
    expect(controller).toBeDefined();
  });
});

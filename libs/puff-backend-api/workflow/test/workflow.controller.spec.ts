import { Test, TestingModule } from '@nestjs/testing';
import { WorkflowHistoryController } from './workflow-history.controller';

describe('WorkflowController', () => {
  let controller: WorkflowHistoryController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [WorkflowHistoryController],
    }).compile();

    controller = module.get<WorkflowHistoryController>(WorkflowHistoryController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});

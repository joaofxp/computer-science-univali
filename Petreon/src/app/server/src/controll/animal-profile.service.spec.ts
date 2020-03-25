import { TestBed } from '@angular/core/testing';

import { AnimalProfileService } from './animal-profile.service';

describe('AnimalProfileService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: AnimalProfileService = TestBed.get(AnimalProfileService);
    expect(service).toBeTruthy();
  });
});

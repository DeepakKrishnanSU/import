package com.example.donorapp;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BloodDonorRepository extends JpaRepository<BloodDonor, Integer> {
    List<BloodDonor> findByBloodGroupIgnoreCase(String bloodGroup);
}
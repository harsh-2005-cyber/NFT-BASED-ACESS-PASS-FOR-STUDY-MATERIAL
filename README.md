# Study Access Pass on Aptos

## Description

This project provides a simple and efficient smart contract on the Aptos blockchain for managing access to digital study materials. The contract allows a designated content creator to grant access to students by adding their wallet addresses to an on-chain "allow-list."

This system serves as a non-transferable digital pass, ensuring that only authorized individuals can access the content. It is built around two core functions:
- `grant_access(creator: &signer, student_addr: address)`: A function for the creator to add a student to the access list.
- `has_access(student_addr: address): bool`: A public view function to verify if a student has access.

This lightweight approach is highly gas-efficient and secure, providing a strong foundation for a decentralized access control system.

## How to Use

1.  **Deploy the Contract:** The creator deploys the `StudyAccessPass` module to their Aptos account. Their address is automatically set as the `CREATOR`.
2.  **Grant Access:** The creator calls the `grant_access` entry function, passing in a student's address to add them to the on-chain `AccessList`.
3.  **Verify Access:** A frontend application or another smart contract can call the `has_access` view function at any time to check if a student's address has been granted access. This allows for seamless integration with off-chain or on-chain content delivery platforms.

## Vision

Our vision is to empower educators and content creators by providing a decentralized, transparent, and secure tool for managing access to their digital resources. By leveraging the Aptos blockchain, we eliminate the need for centralized intermediaries, giving creators full control over their content distribution and providing students with a verifiable, on-chain proof of their access rights.

## Future Scope

While the current implementation is a robust and gas-efficient allow-list, the project has a clear roadmap for expansion to enhance its capabilities:

1.  **Full NFT Implementation:**
    - Evolve the access pass from a simple on-chain record into a true Digital Asset (NFT) using the Aptos standard. This would make the passes visible in wallets and potentially transferable or sellable on marketplaces.

2.  **Tiered Access Levels:**
    - Introduce different types of passes (e.g., "Basic," "Premium," "All-Access") that unlock different sets of study materials, allowing for more flexible monetization strategies.

3.  **Time-Based Expiration:**
    - Implement logic for access passes to automatically expire after a set duration (e.g., 30 days, 1 year). This would enable subscription-based models for educational content.

4.  **Frontend dApp Integration:**
    - Develop a user-friendly web interface (dApp) for creators to easily manage their student lists and for students to connect their wallets and view the materials they have access to.

5.  **Direct Purchase Functionality:**
    - Add a function allowing students to purchase access passes directly from the smart contract with APT tokens, with funds automatically transferred to the creator.


## Transaction hash : 0x3f86ba91c1d47f357c4ed12f56b4723b7994e7d440e6ff67e9a476bdd7396a7d
<img width="1893" height="901" alt="image" src="https://github.com/user-attachments/assets/99f93062-00e8-4e7c-bea9-16ce5b999ec3" />


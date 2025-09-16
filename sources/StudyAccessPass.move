/// A simple module for managing access passes to study materials.
/// This contract allows a designated creator to grant access to students.
/// Access is tracked in an on-chain table, acting as a digital, non-transferable pass.
module MyModule::StudyAccessPass {
    use std::signer;
    use aptos_std::table::{Self, Table};

    /// A resource that holds the list of addresses with access.
    /// This is stored under the creator's account.
    struct AccessList has key {
        allowed_students: Table<address, bool>,
    }

    /// The address of the content creator who can grant access.
    /// This is automatically set to the account that deploys the module.
    const CREATOR: address = @MyModule;

    /// Error if the function caller is not the designated creator.
    const E_NOT_CREATOR: u64 = 1;
    /// Error if the student already has access.
    const E_ALREADY_HAS_ACCESS: u64 = 2;

    /// Grants an access pass to a student by adding them to an on-chain list.
    /// If this is the first time it's called, it will also initialize the list.
    /// This function can only be called by the `CREATOR`.
    public entry fun grant_access(creator: &signer, student_addr: address) acquires AccessList {
        let creator_addr = signer::address_of(creator);
        assert!(creator_addr == CREATOR, E_NOT_CREATOR);

        // On the first grant, initialize the access list under the creator's account.
        if (!exists<AccessList>(creator_addr)) {
            move_to(creator, AccessList { allowed_students: table::new() });
        };

        let access_list = borrow_global_mut<AccessList>(creator_addr);
        assert!(!table::contains(&access_list.allowed_students, student_addr), E_ALREADY_HAS_ACCESS);

        table::add(&mut access_list.allowed_students, student_addr, true);
    }

    #[view]
    /// Checks if a student has an access pass. This is a read-only view function.
    public fun has_access(student_addr: address): bool acquires AccessList {
        if (!exists<AccessList>(CREATOR)) return false;
        let access_list = borrow_global<AccessList>(CREATOR);
        table::contains(&access_list.allowed_students, student_addr)
    }
}
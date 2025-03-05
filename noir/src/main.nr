fn main(secret_x: Field, public_output: pub Field) {
    let computed_output = secret_x * secret_x;
    assert(computed_output == public_output);
}

#[test]
fn test_main() {
    main(2, 4);

    // Uncomment to make test fail
    // main(2, 2);
}

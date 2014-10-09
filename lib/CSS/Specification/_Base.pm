use v6;

grammar CSS::Specification::_Base {

    token seen($opt) {
           <?{@*SEEN[$opt]++}>
    }

    multi rule decl(Any) {
        # fallback for unknown property
        {say "WTF????"}
        <any-args> $<this-property-is_unknown>=<?>
    }

}

package image

#Image: {
	registry!:   string
	repository!: string
	tag!:        string
	digest?:     =~"^sha256:[a-f0-9]{64}$"
	ref:         string

	_base: "\(registry)/\(repository):\(tag)"

	if digest == _|_ {
		ref: _base
	}
	if digest != _|_ {
		ref: "\(_base)@\(digest)"
	}
}

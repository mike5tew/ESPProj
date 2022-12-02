package security

import "crypto/md5"

func Computehash(hash string) [16]byte {

	return md5.Sum([]byte(hash))
}

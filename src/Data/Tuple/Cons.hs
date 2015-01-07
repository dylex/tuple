{-# LANGUAGE MultiParamTypeClasses, FunctionalDependencies, FlexibleInstances #-}

-- | Overloaded functions for prepending values to tuples.
--
--   ==== __Examples__
--
--   >>> consT 7 (1,2,3)
--   (7,1,2,3)
--
--   >>> consT 7 (1,2,3,4,5,6,7,8,9,10)
--   (7,1,2,3,4,5,6,7,8,9,10)
--
module Data.Tuple.Cons where
import Data.Tuple.OneTuple
import Data.Tuple.Select

class Sel1 c a => ConsT a b c | a b -> c, c -> a b where
  consT :: a -> b -> c
  unconsT :: c -> (a, b)

instance ConsT b (OneTuple a1) (b,a1) where
  consT x (OneTuple y) = (x,y)
  unconsT (x, y) = (x, OneTuple y)

--snip-----------------
---- Machine generated code below, see Tools/MkTuple.hs
---- mkTuple cons 32
instance ConsT b (a1,a2) (b, a1,a2) where
    consT b (a1,a2) = (b, a1,a2)
    unconsT (b, a1,a2) = (b, (a1,a2))
instance ConsT b (a1,a2,a3) (b, a1,a2,a3) where
    consT b (a1,a2,a3) = (b, a1,a2,a3)
    unconsT (b, a1,a2,a3) = (b, (a1,a2,a3))
instance ConsT b (a1,a2,a3,a4) (b, a1,a2,a3,a4) where
    consT b (a1,a2,a3,a4) = (b, a1,a2,a3,a4)
    unconsT (b, a1,a2,a3,a4) = (b, (a1,a2,a3,a4))
instance ConsT b (a1,a2,a3,a4,a5) (b, a1,a2,a3,a4,a5) where
    consT b (a1,a2,a3,a4,a5) = (b, a1,a2,a3,a4,a5)
    unconsT (b, a1,a2,a3,a4,a5) = (b, (a1,a2,a3,a4,a5))
instance ConsT b (a1,a2,a3,a4,a5,a6) (b, a1,a2,a3,a4,a5,a6) where
    consT b (a1,a2,a3,a4,a5,a6) = (b, a1,a2,a3,a4,a5,a6)
    unconsT (b, a1,a2,a3,a4,a5,a6) = (b, (a1,a2,a3,a4,a5,a6))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7) (b, a1,a2,a3,a4,a5,a6,a7) where
    consT b (a1,a2,a3,a4,a5,a6,a7) = (b, a1,a2,a3,a4,a5,a6,a7)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7) = (b, (a1,a2,a3,a4,a5,a6,a7))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8) (b, a1,a2,a3,a4,a5,a6,a7,a8) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8) = (b, a1,a2,a3,a4,a5,a6,a7,a8)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8) = (b, (a1,a2,a3,a4,a5,a6,a7,a8))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30))
instance ConsT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31) (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31) where
    consT b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31) = (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31)
    unconsT (b, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31) = (b, (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31))

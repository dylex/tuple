{-# LANGUAGE MultiParamTypeClasses, FunctionalDependencies, FlexibleInstances #-}

-- | Overloaded functions for appending values to tuples.
--
--   ==== __Examples__
--
--   >>> snocT (1,2,3) 7
--   (1,2,3,7)
--
--   >>> snocT (1,2,3,4,5,6,7,8,9,10) 7
--   (1,2,3,4,5,6,7,8,9,10,7)
--
module Data.Tuple.Snoc where
import Data.Tuple.OneTuple

class SnocT a b c | a b -> c, c -> a b where
  snocT :: a -> b -> c
  unsnocT :: c -> (a, b)

instance SnocT (OneTuple a1) b (a1,b) where
  snocT (OneTuple x) y = (x,y)
  unsnocT (x, y) = (OneTuple x, y)

--snip-----------------
---- Machine generated code below, see Tools/MkTuple.hs
---- mkTuple snoc 32
instance SnocT (a1,a2) b (a1,a2, b) where
    snocT (a1,a2) b = (a1,a2, b)
    unsnocT (a1,a2, b) = ((a1,a2), b)
instance SnocT (a1,a2,a3) b (a1,a2,a3, b) where
    snocT (a1,a2,a3) b = (a1,a2,a3, b)
    unsnocT (a1,a2,a3, b) = ((a1,a2,a3), b)
instance SnocT (a1,a2,a3,a4) b (a1,a2,a3,a4, b) where
    snocT (a1,a2,a3,a4) b = (a1,a2,a3,a4, b)
    unsnocT (a1,a2,a3,a4, b) = ((a1,a2,a3,a4), b)
instance SnocT (a1,a2,a3,a4,a5) b (a1,a2,a3,a4,a5, b) where
    snocT (a1,a2,a3,a4,a5) b = (a1,a2,a3,a4,a5, b)
    unsnocT (a1,a2,a3,a4,a5, b) = ((a1,a2,a3,a4,a5), b)
instance SnocT (a1,a2,a3,a4,a5,a6) b (a1,a2,a3,a4,a5,a6, b) where
    snocT (a1,a2,a3,a4,a5,a6) b = (a1,a2,a3,a4,a5,a6, b)
    unsnocT (a1,a2,a3,a4,a5,a6, b) = ((a1,a2,a3,a4,a5,a6), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7) b (a1,a2,a3,a4,a5,a6,a7, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7) b = (a1,a2,a3,a4,a5,a6,a7, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7, b) = ((a1,a2,a3,a4,a5,a6,a7), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8) b (a1,a2,a3,a4,a5,a6,a7,a8, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8) b = (a1,a2,a3,a4,a5,a6,a7,a8, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8, b) = ((a1,a2,a3,a4,a5,a6,a7,a8), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9) b (a1,a2,a3,a4,a5,a6,a7,a8,a9, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31), b)
instance SnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,a32) b (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,a32, b) where
    snocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,a32) b = (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,a32, b)
    unsnocT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,a32, b) = ((a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,a32), b)

public import Buffer_Linear_Bounded_Primitive
public import Buffer_Linear_Primitive
public import Buffer_Primitive
public import Buffer_Ring_Primitive
public import Memory_Pool
public import Memory_Allocator
public import Memory
public import Memory
public import Ownership_Shared_Primitive
public import Storage
public import Storage_Generational
public import Storage_Primitive
public import Store_Inline

public enum Column {}

extension Column {

    public typealias Heap<E: ~Copyable> =
        Buffer<Storage<Memory.Allocator<Memory.Heap>>.Contiguous<E>>.Linear

    public typealias Bounded<E: ~Copyable> =
        Buffer<Storage<Memory.Allocator<Memory.Heap>>.Contiguous<E>>.Linear.Bounded

    public typealias Ring<E: ~Copyable> =
        Buffer<Storage<Memory.Allocator<Memory.Heap>>.Contiguous<E>>.Ring

    public typealias Inline<E: ~Copyable, let n: Int> = Store.Inline<E, n>

    public typealias Generational<E: ~Copyable> =
        Storage<Memory.Allocator<Memory.Heap>.Pool>.Generational<E>

    public typealias Shared<E: ~Copyable> = Ownership.Shared<E, Heap<E>>
}

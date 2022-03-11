# This is an autogenerated file for dynamic methods in BookImage
# Please rerun bundle exec rake rails_rbi:models[BookImage] to regenerate.

# typed: strong
module BookImage::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module BookImage::GeneratedAttributeMethods
  sig { returns(Integer) }
  def book_id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def book_id=(value); end

  sig { returns(T::Boolean) }
  def book_id?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def created_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def created_at?; end

  sig { returns(Integer) }
  def id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def id=(value); end

  sig { returns(T::Boolean) }
  def id?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def updated_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def updated_at?; end
end

module BookImage::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[BookImage]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[BookImage]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[BookImage]) }
  def find_n(*args); end

  sig { params(id: T.nilable(Integer)).returns(T.nilable(BookImage)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(BookImage) }
  def find_by_id!(id); end
end

class BookImage < ApplicationRecord
  include BookImage::GeneratedAttributeMethods
  include BookImage::GeneratedAssociationMethods
  extend BookImage::CustomFinderMethods
  extend BookImage::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(BookImage::ActiveRecord_Relation, BookImage::ActiveRecord_Associations_CollectionProxy, BookImage::ActiveRecord_AssociationRelation) }

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def self.with_attached_file(*args); end
end

class BookImage::ActiveRecord_Relation < ActiveRecord::Relation
  include BookImage::ActiveRelation_WhereNot
  include BookImage::CustomFinderMethods
  include BookImage::QueryMethodsReturningRelation
  Elem = type_member(fixed: BookImage)

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def with_attached_file(*args); end
end

class BookImage::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include BookImage::ActiveRelation_WhereNot
  include BookImage::CustomFinderMethods
  include BookImage::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: BookImage)

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def with_attached_file(*args); end
end

class BookImage::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include BookImage::CustomFinderMethods
  include BookImage::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: BookImage)

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def with_attached_file(*args); end

  sig { params(records: T.any(BookImage, T::Array[BookImage])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(BookImage, T::Array[BookImage])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(BookImage, T::Array[BookImage])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(BookImage, T::Array[BookImage])).returns(T.self_type) }
  def concat(*records); end
end

module BookImage::QueryMethodsReturningRelation
  sig { returns(BookImage::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(BookImage::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_Relation) }
  def only(*args); end

  sig { params(block: T.proc.params(e: BookImage).returns(T::Boolean)).returns(T::Array[BookImage]) }
  def select(&block); end

  sig { params(args: T.any(String, Symbol, T::Array[T.any(String, Symbol)])).returns(BookImage::ActiveRecord_Relation) }
  def select_columns(*args); end

  sig { params(args: Symbol).returns(BookImage::ActiveRecord_Relation) }
  def where_missing(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(BookImage::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: BookImage::ActiveRecord_Relation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module BookImage::QueryMethodsReturningAssociationRelation
  sig { returns(BookImage::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(BookImage::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(BookImage::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(block: T.proc.params(e: BookImage).returns(T::Boolean)).returns(T::Array[BookImage]) }
  def select(&block); end

  sig { params(args: T.any(String, Symbol, T::Array[T.any(String, Symbol)])).returns(BookImage::ActiveRecord_AssociationRelation) }
  def select_columns(*args); end

  sig { params(args: Symbol).returns(BookImage::ActiveRecord_AssociationRelation) }
  def where_missing(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(BookImage::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: BookImage::ActiveRecord_AssociationRelation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module BookImage::GeneratedAssociationMethods
  sig { returns(::Book) }
  def book; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Book).void)).returns(::Book) }
  def build_book(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Book).void)).returns(::Book) }
  def create_book(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Book).void)).returns(::Book) }
  def create_book!(*args, &block); end

  sig { params(value: ::Book).void }
  def book=(value); end

  sig { returns(::Book) }
  def reload_book; end

  sig { returns(T.nilable(::ActiveStorage::Attachment)) }
  def file_attachment; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::ActiveStorage::Attachment).void)).returns(::ActiveStorage::Attachment) }
  def build_file_attachment(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::ActiveStorage::Attachment).void)).returns(::ActiveStorage::Attachment) }
  def create_file_attachment(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::ActiveStorage::Attachment).void)).returns(::ActiveStorage::Attachment) }
  def create_file_attachment!(*args, &block); end

  sig { params(value: T.nilable(::ActiveStorage::Attachment)).void }
  def file_attachment=(value); end

  sig { returns(T.nilable(::ActiveStorage::Attachment)) }
  def reload_file_attachment; end

  sig { returns(T.nilable(::ActiveStorage::Blob)) }
  def file_blob; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::ActiveStorage::Blob).void)).returns(::ActiveStorage::Blob) }
  def build_file_blob(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::ActiveStorage::Blob).void)).returns(::ActiveStorage::Blob) }
  def create_file_blob(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::ActiveStorage::Blob).void)).returns(::ActiveStorage::Blob) }
  def create_file_blob!(*args, &block); end

  sig { params(value: T.nilable(::ActiveStorage::Blob)).void }
  def file_blob=(value); end

  sig { returns(T.nilable(::ActiveStorage::Blob)) }
  def reload_file_blob; end

  sig { returns(T.nilable(ActiveStorage::Attached::One)) }
  def file; end

  sig { params(attachable: T.untyped).returns(T.untyped) }
  def file=(attachable); end
end

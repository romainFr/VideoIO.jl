# Julia wrapper for header: /usr/local/include/libavformat/avio.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    avio_find_protocol_name,
    avio_check,
    avpriv_io_move,
    avpriv_io_delete,
    avio_open_dir,
    avio_read_dir,
    avio_close_dir,
    avio_free_directory_entry,
    avio_alloc_context,
    avio_w8,
    avio_write,
    avio_wl64,
    avio_wb64,
    avio_wl32,
    avio_wb32,
    avio_wl24,
    avio_wb24,
    avio_wl16,
    avio_wb16,
    avio_put_str,
    avio_put_str16le,
    avio_put_str16be,
    avio_seek,
    avio_skip,
    avio_tell,
    avio_size,
    avio_feof,
    url_feof,
    avio_flush,
    avio_read,
    avio_r8,
    avio_rl16,
    avio_rl24,
    avio_rl32,
    avio_rl64,
    avio_rb16,
    avio_rb24,
    avio_rb32,
    avio_rb64,
    avio_get_str,
    avio_get_str16le,
    avio_get_str16be,
    avio_open,
    avio_open2,
    avio_close,
    avio_closep,
    avio_open_dyn_buf,
    avio_close_dyn_buf,
    avio_enum_protocols,
    avio_pause,
    avio_seek_time,
    avio_read_to_bprint,
    avio_accept,
    avio_handshake


function avio_find_protocol_name(url)
    ccall((:avio_find_protocol_name,libavformat),Cstring,(Cstring,),url)
end

function avio_check(url,flags::Integer)
    ccall((:avio_check,libavformat),Cint,(Cstring,Cint),url,flags)
end

function avpriv_io_move(url_src,url_dst)
    ccall((:avpriv_io_move,libavformat),Cint,(Cstring,Cstring),url_src,url_dst)
end

function avpriv_io_delete(url)
    ccall((:avpriv_io_delete,libavformat),Cint,(Cstring,),url)
end

function avio_open_dir(s,url,options)
    ccall((:avio_open_dir,libavformat),Cint,(Ptr{Ptr{AVIODirContext}},Cstring,Ptr{Ptr{AVDictionary}}),s,url,options)
end

function avio_read_dir(s,next)
    ccall((:avio_read_dir,libavformat),Cint,(Ptr{AVIODirContext},Ptr{Ptr{AVIODirEntry}}),s,next)
end

function avio_close_dir(s)
    ccall((:avio_close_dir,libavformat),Cint,(Ptr{Ptr{AVIODirContext}},),s)
end

function avio_free_directory_entry(entry)
    ccall((:avio_free_directory_entry,libavformat),Void,(Ptr{Ptr{AVIODirEntry}},),entry)
end

function avio_alloc_context(buffer,buffer_size::Integer,write_flag::Integer,opaque,read_packet,write_packet,seek)
    ccall((:avio_alloc_context,libavformat),Ptr{AVIOContext},(Ptr{Cuchar},Cint,Cint,Ptr{Void},Ptr{Void},Ptr{Void},Ptr{Void}),buffer,buffer_size,write_flag,opaque,read_packet,write_packet,seek)
end

function avio_w8(s,b::Integer)
    ccall((:avio_w8,libavformat),Void,(Ptr{AVIOContext},Cint),s,b)
end

function avio_write(s,buf,size::Integer)
    ccall((:avio_write,libavformat),Void,(Ptr{AVIOContext},Ptr{Cuchar},Cint),s,buf,size)
end

function avio_wl64(s,val::UInt64)
    ccall((:avio_wl64,libavformat),Void,(Ptr{AVIOContext},UInt64),s,val)
end

function avio_wb64(s,val::UInt64)
    ccall((:avio_wb64,libavformat),Void,(Ptr{AVIOContext},UInt64),s,val)
end

function avio_wl32(s,val::Integer)
    ccall((:avio_wl32,libavformat),Void,(Ptr{AVIOContext},UInt32),s,val)
end

function avio_wb32(s,val::Integer)
    ccall((:avio_wb32,libavformat),Void,(Ptr{AVIOContext},UInt32),s,val)
end

function avio_wl24(s,val::Integer)
    ccall((:avio_wl24,libavformat),Void,(Ptr{AVIOContext},UInt32),s,val)
end

function avio_wb24(s,val::Integer)
    ccall((:avio_wb24,libavformat),Void,(Ptr{AVIOContext},UInt32),s,val)
end

function avio_wl16(s,val::Integer)
    ccall((:avio_wl16,libavformat),Void,(Ptr{AVIOContext},UInt32),s,val)
end

function avio_wb16(s,val::Integer)
    ccall((:avio_wb16,libavformat),Void,(Ptr{AVIOContext},UInt32),s,val)
end

function avio_put_str(s,str)
    ccall((:avio_put_str,libavformat),Cint,(Ptr{AVIOContext},Cstring),s,str)
end

function avio_put_str16le(s,str)
    ccall((:avio_put_str16le,libavformat),Cint,(Ptr{AVIOContext},Cstring),s,str)
end

function avio_put_str16be(s,str)
    ccall((:avio_put_str16be,libavformat),Cint,(Ptr{AVIOContext},Cstring),s,str)
end

function avio_seek(s,offset::Int64,whence::Integer)
    ccall((:avio_seek,libavformat),Int64,(Ptr{AVIOContext},Int64,Cint),s,offset,whence)
end

function avio_skip(s,offset::Int64)
    ccall((:avio_skip,libavformat),Int64,(Ptr{AVIOContext},Int64),s,offset)
end

function avio_tell(s)
    ccall((:avio_tell,libavformat),Int64,(Ptr{AVIOContext},),s)
end

function avio_size(s)
    ccall((:avio_size,libavformat),Int64,(Ptr{AVIOContext},),s)
end

function avio_feof(s)
    ccall((:avio_feof,libavformat),Cint,(Ptr{AVIOContext},),s)
end

function url_feof(s)
    ccall((:url_feof,libavformat),Cint,(Ptr{AVIOContext},),s)
end

function avio_flush(s)
    ccall((:avio_flush,libavformat),Void,(Ptr{AVIOContext},),s)
end

function avio_read(s,buf,size::Integer)
    ccall((:avio_read,libavformat),Cint,(Ptr{AVIOContext},Ptr{Cuchar},Cint),s,buf,size)
end

function avio_r8(s)
    ccall((:avio_r8,libavformat),Cint,(Ptr{AVIOContext},),s)
end

function avio_rl16(s)
    ccall((:avio_rl16,libavformat),UInt32,(Ptr{AVIOContext},),s)
end

function avio_rl24(s)
    ccall((:avio_rl24,libavformat),UInt32,(Ptr{AVIOContext},),s)
end

function avio_rl32(s)
    ccall((:avio_rl32,libavformat),UInt32,(Ptr{AVIOContext},),s)
end

function avio_rl64(s)
    ccall((:avio_rl64,libavformat),UInt64,(Ptr{AVIOContext},),s)
end

function avio_rb16(s)
    ccall((:avio_rb16,libavformat),UInt32,(Ptr{AVIOContext},),s)
end

function avio_rb24(s)
    ccall((:avio_rb24,libavformat),UInt32,(Ptr{AVIOContext},),s)
end

function avio_rb32(s)
    ccall((:avio_rb32,libavformat),UInt32,(Ptr{AVIOContext},),s)
end

function avio_rb64(s)
    ccall((:avio_rb64,libavformat),UInt64,(Ptr{AVIOContext},),s)
end

function avio_get_str(pb,maxlen::Integer,buf,buflen::Integer)
    ccall((:avio_get_str,libavformat),Cint,(Ptr{AVIOContext},Cint,Cstring,Cint),pb,maxlen,buf,buflen)
end

function avio_get_str16le(pb,maxlen::Integer,buf,buflen::Integer)
    ccall((:avio_get_str16le,libavformat),Cint,(Ptr{AVIOContext},Cint,Cstring,Cint),pb,maxlen,buf,buflen)
end

function avio_get_str16be(pb,maxlen::Integer,buf,buflen::Integer)
    ccall((:avio_get_str16be,libavformat),Cint,(Ptr{AVIOContext},Cint,Cstring,Cint),pb,maxlen,buf,buflen)
end

function avio_open(s,url,flags::Integer)
    ccall((:avio_open,libavformat),Cint,(Ptr{Ptr{AVIOContext}},Cstring,Cint),s,url,flags)
end

function avio_open2(s,url,flags::Integer,int_cb,options)
    ccall((:avio_open2,libavformat),Cint,(Ptr{Ptr{AVIOContext}},Cstring,Cint,Ptr{AVIOInterruptCB},Ptr{Ptr{AVDictionary}}),s,url,flags,int_cb,options)
end

function avio_close(s)
    ccall((:avio_close,libavformat),Cint,(Ptr{AVIOContext},),s)
end

function avio_closep(s)
    ccall((:avio_closep,libavformat),Cint,(Ptr{Ptr{AVIOContext}},),s)
end

function avio_open_dyn_buf(s)
    ccall((:avio_open_dyn_buf,libavformat),Cint,(Ptr{Ptr{AVIOContext}},),s)
end

function avio_close_dyn_buf(s,pbuffer)
    ccall((:avio_close_dyn_buf,libavformat),Cint,(Ptr{AVIOContext},Ptr{Ptr{UInt8}}),s,pbuffer)
end

function avio_enum_protocols(opaque,output::Integer)
    ccall((:avio_enum_protocols,libavformat),Cstring,(Ptr{Ptr{Void}},Cint),opaque,output)
end

function avio_pause(h,pause::Integer)
    ccall((:avio_pause,libavformat),Cint,(Ptr{AVIOContext},Cint),h,pause)
end

function avio_seek_time(h,stream_index::Integer,timestamp::Int64,flags::Integer)
    ccall((:avio_seek_time,libavformat),Int64,(Ptr{AVIOContext},Cint,Int64,Cint),h,stream_index,timestamp,flags)
end

function avio_read_to_bprint(h,pb,max_size::Csize_t)
    ccall((:avio_read_to_bprint,libavformat),Cint,(Ptr{AVIOContext},Ptr{AVBPrint},Csize_t),h,pb,max_size)
end

function avio_accept(s,c)
    ccall((:avio_accept,libavformat),Cint,(Ptr{AVIOContext},Ptr{Ptr{AVIOContext}}),s,c)
end

function avio_handshake(c)
    ccall((:avio_handshake,libavformat),Cint,(Ptr{AVIOContext},),c)
end

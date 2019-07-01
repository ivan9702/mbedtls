LOCAL_PATH:=$(call my-dir)

MY_CURRENT_PATH := $(LOCAL_PATH)

$(info MY_CURRENT_PATH is = $(MY_CURRENT_PATH))

######################################################################### libmbedx509

include $(CLEAR_VARS)

LOCAL_CFLAGS += -fvisibility=hidden
LOCAL_CFLAGS += -fPIC -fpic

# fix compiler:-Werror=format-security
LOCAL_DISABLE_FORMAT_STRING_CHECKS := true

LOCAL_CPP_EXTENSION := .cc .cpp .cxx
LOCAL_C_INCLUDES := $(MY_CURRENT_PATH)/include
LOCAL_MODULE := libmbedx509

# libmbedx509
LOCAL_SRC_FILES := $(MY_CURRENT_PATH)/library/certs.c
LOCAL_SRC_FILES += $(MY_CURRENT_PATH)/library/pkcs11.c
LOCAL_SRC_FILES += $(MY_CURRENT_PATH)/library/x509.c
LOCAL_SRC_FILES += $(MY_CURRENT_PATH)/library/x509_create.c
LOCAL_SRC_FILES += $(MY_CURRENT_PATH)/library/x509_crl.c
LOCAL_SRC_FILES += $(MY_CURRENT_PATH)/library/x509_csr.c
LOCAL_SRC_FILES += $(MY_CURRENT_PATH)/library/x509write_crt.c
LOCAL_SRC_FILES += $(MY_CURRENT_PATH)/library/x509write_csr.c

# BUILD_EXECUTABLE / BUILD_SHARED_LIBRARY / BUILD_STATIC_LIBRARY
include $(BUILD_STATIC_LIBRARY)

######################################################################## libmbedx509

######################################################################### libmbedtls

include $(CLEAR_VARS)

LOCAL_CFLAGS += -fvisibility=hidden
LOCAL_CFLAGS += -fPIC -fpic

# fix compiler:-Werror=format-security
LOCAL_DISABLE_FORMAT_STRING_CHECKS := true

LOCAL_CPP_EXTENSION := .cc .cpp .cxx
LOCAL_C_INCLUDES += include
LOCAL_MODULE := libmbedtls

# libmbedtls
LOCAL_SRC_FILES := library/debug.c
LOCAL_SRC_FILES += library/net_sockets.c
LOCAL_SRC_FILES += library/ssl_cache.c
LOCAL_SRC_FILES += library/ssl_ciphersuites.c
LOCAL_SRC_FILES += library/ssl_cli.c
LOCAL_SRC_FILES += library/ssl_cookie.c
LOCAL_SRC_FILES += library/ssl_srv.c
LOCAL_SRC_FILES += library/ssl_ticket.c
LOCAL_SRC_FILES += library/ssl_tls.c

# BUILD_EXECUTABLE / BUILD_SHARED_LIBRARY / BUILD_STATIC_LIBRARY
include $(BUILD_STATIC_LIBRARY)

######################################################################### libmbedtls

######################################################################### libmbedcrypto

include $(CLEAR_VARS)

LOCAL_CFLAGS += -fvisibility=hidden
LOCAL_CFLAGS += -fPIC -fpic

# fix compiler:-Werror=format-security
LOCAL_DISABLE_FORMAT_STRING_CHECKS := true

LOCAL_CPP_EXTENSION := .cc .cpp .cxx
LOCAL_C_INCLUDES += include
LOCAL_MODULE := libmbedcrypto

# libmbedcrypto
LOCAL_SRC_FILES := library/aes.c
LOCAL_SRC_FILES += library/aesni.c
LOCAL_SRC_FILES += library/arc4.c
LOCAL_SRC_FILES += library/asn1parse.c
LOCAL_SRC_FILES += library/asn1write.c
LOCAL_SRC_FILES += library/base64.c
LOCAL_SRC_FILES += library/bignum.c
LOCAL_SRC_FILES += library/blowfish.c
LOCAL_SRC_FILES += library/camellia.c
#LOCAL_SRC_FILES += library/aria.c
LOCAL_SRC_FILES += library/ccm.c
LOCAL_SRC_FILES += library/cipher.c
LOCAL_SRC_FILES += library/cipher_wrap.c
LOCAL_SRC_FILES += library/cmac.c
LOCAL_SRC_FILES += library/ctr_drbg.c
LOCAL_SRC_FILES += library/des.c
LOCAL_SRC_FILES += library/cmac.c
LOCAL_SRC_FILES += library/ctr_drbg.c
LOCAL_SRC_FILES += library/des.c
LOCAL_SRC_FILES += library/dhm.c
LOCAL_SRC_FILES += library/ecdh.c
LOCAL_SRC_FILES += library/ecdsa.c
LOCAL_SRC_FILES += library/ecjpake.c
LOCAL_SRC_FILES += library/ecp.c
LOCAL_SRC_FILES += library/ecp_curves.c
LOCAL_SRC_FILES += library/entropy.c
LOCAL_SRC_FILES += library/entropy_poll.c
LOCAL_SRC_FILES += library/error.c
LOCAL_SRC_FILES += library/gcm.c
LOCAL_SRC_FILES += library/havege.c
#LOCAL_SRC_FILES += library/hkdf.c
LOCAL_SRC_FILES += library/hmac_drbg.c
LOCAL_SRC_FILES += library/md.c
LOCAL_SRC_FILES += library/md2.c
LOCAL_SRC_FILES += library/md4.c
LOCAL_SRC_FILES += library/md5.c
LOCAL_SRC_FILES += library/md_wrap.c
LOCAL_SRC_FILES += library/memory_buffer_alloc.c
LOCAL_SRC_FILES += library/oid.c
LOCAL_SRC_FILES += library/padlock.c
LOCAL_SRC_FILES += library/pem.c
LOCAL_SRC_FILES += library/pk.c
LOCAL_SRC_FILES += library/pk_wrap.c
LOCAL_SRC_FILES += library/pkcs12.c
LOCAL_SRC_FILES += library/pkcs5.c
LOCAL_SRC_FILES += library/pkparse.c
LOCAL_SRC_FILES += library/pkwrite.c
LOCAL_SRC_FILES += library/platform.c
#LOCAL_SRC_FILES += library/platform_util.c
LOCAL_SRC_FILES += library/ripemd160.c
LOCAL_SRC_FILES += library/rsa_internal.c
LOCAL_SRC_FILES += library/rsa.c
LOCAL_SRC_FILES += library/sha1.c
LOCAL_SRC_FILES += library/sha256.c
LOCAL_SRC_FILES += library/sha512.c
LOCAL_SRC_FILES += library/threading.c
LOCAL_SRC_FILES += library/timing.c
LOCAL_SRC_FILES += library/version.c
LOCAL_SRC_FILES += library/version_features.c
LOCAL_SRC_FILES += library/xtea.c

# BUILD_EXECUTABLE / BUILD_SHARED_LIBRARY / BUILD_STATIC_LIBRARY
include $(BUILD_STATIC_LIBRARY)

######################################################################### libmbedcrypto

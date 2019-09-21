Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4581BB9C0A
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Sep 2019 05:09:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dAsUdH36oNUG7GPonjyIdE2BlCBB4KXwvMnhVVnooXE=; b=H2cjyDB/+oXN6TW0EDfD+DzTL2
	kvwE8xNxiZrQr0bTrHt9hCSq1s4j9ppFN++fwb0BrJ95NtJdCOaedvVHQXd59JetS444hnC8ssXPR
	qFZyqbJ5BDFxxGwLlehhsT3rPF/PqdJ/Xy382AmNkQsiFHoUIl/fa0zmINZDxs3FZberej5BM3Vj+
	rN+ST+8/8kHcpX9l8KHRsldih1G8j9Rey3aLNFIkxfB+BLUnmFjQ51021DbDymQlYyyImg1UwSc7k
	9K1lhaGSrhIf63SFhsv7SWZKVzFmBimf4sxZLkOaGAIRPEa/Q4T/jGAZhwQzLofx+zLrXGr6b83hb
	4ZPjAUng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBVlZ-00063v-Q1; Sat, 21 Sep 2019 03:08:57 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBVlT-00063V-82
 for openwrt-devel@lists.openwrt.org; Sat, 21 Sep 2019 03:08:52 +0000
Received: by mail-qk1-x741.google.com with SMTP id u22so5863399qkk.11
 for <openwrt-devel@lists.openwrt.org>; Fri, 20 Sep 2019 20:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
 bh=coMjkhENxLgK5lv8miNFReaAZtusZnryVVVOW1PK5lg=;
 b=TyQOZTIcN7R6SBoZHTJZMd9ncAcBCtELU+pyOFx9VKjPDNt0Aysp3azYAQanhG08kS
 qspmQL7OCW5HD9zO68q4J4b32CqtvP2rpBUoHihygI0eUIOgHlIn1m6PxVNSCRY9Pxx3
 QD/OBZuRGz2IF7gy6P21MlmHkwzYb49ccRN/5EC9BpqngwK37aaJUiflguDKkyNP1toV
 AVovMOcF2Oc5UtS5Mf+G2T8P19sfugGSq+8Rb1F6T6Vhc/Q9Q1mKTZ+glcmxu4Hm5+Mj
 y4VKteSXKjcloDEnC31vbadzlaa0X1IXzg+QdFOyHjcZnSEWru6sNiMnMP7/SmfMKU/4
 iWJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc;
 bh=coMjkhENxLgK5lv8miNFReaAZtusZnryVVVOW1PK5lg=;
 b=f1FPI5nWP+M2XNVysMgfNnaCsbThwm7h7kgd4BqVXknKEH13IQL5H8Oxnk+wgr2NhT
 a6Er2mYP+kMwWpTPEe6y6yVjKT5AFszMhNVto3Lk9BoQxHKIetUzzFWp1N6qWBLhx527
 afTsv+jU5RmgTq6dZbzr93yrGLpUFsR/wyBNTq23ux4UcpdRJlCbethDwsD/j1XCpIFw
 0fYE0lEZY0ZjT26HZKfI/FsmiSycKn7VafiteFM668QKWFO1O4WVzruuV/jQOVVHQYab
 eHaKuL8hfal+lXLEraZLUW71TX237GActMZLS1t81seuTPJFajRDgk6/Q/JLzjNI4L1C
 O8/A==
X-Gm-Message-State: APjAAAUfgKkfyMYvw6Ut7orbNsXDY37DuqRJ4WhGapwxeCHFsA3QVldE
 gS39wUQE7f7/uCHJ6fwF4vIlbg3yzW6dH2wcJ+VaA02f
X-Google-Smtp-Source: APXvYqzWh2PcL4YB6byJ/YMbALEXypMp84aowYwPQGDsS6sJ9wzafwQRDSXx80nRYdf5Vo0CNjAtIH//YV4UgM6LRZw=
X-Received: by 2002:a37:dcc1:: with SMTP id v184mr7124598qki.258.1569035329477; 
 Fri, 20 Sep 2019 20:08:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190912195558.11513-1-cotequeiroz@gmail.com>
 <20190919021803.31271-4-cotequeiroz@gmail.com>
 <1d144b1f-fc95-0688-6140-356c14383d42@hauke-m.de>
In-Reply-To: <1d144b1f-fc95-0688-6140-356c14383d42@hauke-m.de>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Sat, 21 Sep 2019 00:08:38 -0300
Message-ID: <CAPxccB26=8tv7mO-zT-Yp_n8QU7K6HBDzR3-q_=xv4b9ZZmzAQ@mail.gmail.com>
Cc: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_200851_315114_50FEF7BD 
X-CRM114-Status: GOOD (  20.96  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 MISSING_HEADERS        Missing To: header
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH ustream-ssl v2 3/3] wolfssl: enable CN
 validation
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

I just realized now that my reply went to Hauke only, so I'm sending
it again to the mailing list, as it may be useful for more people.

On Fri, Sep 20, 2019 at 5:43 PM Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
> On 9/19/19 4:18 AM, Eneas U de Queiroz wrote:
> > WolfSSL added a wolfSSL_X509_check_host function to perform CN
> > validation in v3.10.4, depending on the build-time configure options:
> > --enable-nginx enables it for all supported versions;
> > --enable-opensslextra, since v3.14.2.
> >
> > If the function is unavailable, then SSL_get_verify_result will be
> > called, and 'valid_cert' will be true if that call suceeds and we
> > have a peer certificate, just as it happens with openssl. Only
> > 'valid_cn' will not be set.
> >
> > Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
> >
> > diff --git a/CMakeLists.txt b/CMakeLists.txt
> > index 6b3fc8c..86e1b07 100644
> > --- a/CMakeLists.txt
> > +++ b/CMakeLists.txt
> > @@ -21,6 +21,12 @@ ELSEIF(WOLFSSL)
> >    IF (NOT HAVE_WOLFSSL_SSLSETIORECV)
> >      ADD_DEFINITIONS(-DNO_WOLFSSL_SSLSETIO_SEND_RECV)
> >    ENDIF()
> > +  CHECK_SYMBOL_EXISTS (wolfSSL_X509_check_host
> > +                    "wolfssl/options.h;wolfssl/ssl.h"
> > +                    HAVE_WOLFSSL_X509_CHECK_HOST)
> > +  IF (NOT HAVE_WOLFSSL_X509_CHECK_HOST)
> > +    ADD_DEFINITIONS(-DNO_X509_CHECK_HOST)
> > +  ENDIF()
> >  ELSE()
> >    SET(SSL_SRC ustream-io-openssl.c ustream-openssl.c)
> >    SET(SSL_LIB crypto ssl)
> > diff --git a/ustream-openssl.c b/ustream-openssl.c
> > index 21abf61..c830618 100644
> > --- a/ustream-openssl.c
> > +++ b/ustream-openssl.c
> > @@ -203,7 +203,7 @@ static void ustream_ssl_error(struct ustream_ssl *us, int ret)
> >       uloop_timeout_set(&us->error_timer, 0);
> >  }
> >
> > -#ifndef WOLFSSL_OPENSSL_H_
> > +#ifndef NO_X509_CHECK_HOST
> >
> >  static bool ustream_ssl_verify_cn(struct ustream_ssl *us, X509 *cert)
> >  {
> > @@ -212,10 +212,15 @@ static bool ustream_ssl_verify_cn(struct ustream_ssl *us, X509 *cert)
> >       if (!us->peer_cn)
> >               return false;
> >
> > +# ifndef WOLFSSL_OPENSSL_H_
> >       ret = X509_check_host(cert, us->peer_cn, 0, X509_CHECK_FLAG_NO_PARTIAL_WILDCARDS, NULL);
> > +# else
> > +     ret = wolfSSL_X509_check_host(cert, us->peer_cn, 0, 0, NULL);
> > +# endif
> >       return ret == 1;
> >  }
> >
> > +#endif
> >
> >  static void ustream_ssl_verify_cert(struct ustream_ssl *us)
> >  {
> > @@ -235,11 +240,12 @@ static void ustream_ssl_verify_cert(struct ustream_ssl *us)
> >               return;
> >
> >       us->valid_cert = true;
> > +#ifndef NO_X509_CHECK_HOST
> >       us->valid_cn = ustream_ssl_verify_cn(us, cert);
> > +#endif
> >       X509_free(cert);
> >  }
> >
> > -#endif
> >
> >  __hidden enum ssl_conn_status __ustream_ssl_connect(struct ustream_ssl *us)
> >  {
> > @@ -252,9 +258,7 @@ __hidden enum ssl_conn_status __ustream_ssl_connect(struct ustream_ssl *us)
> >               r = SSL_connect(ssl);
> >
> >       if (r == 1) {
> > -#ifndef WOLFSSL_OPENSSL_H_
> >               ustream_ssl_verify_cert(us);
> > -#endif
> >               return U_SSL_OK;
> >       }
>
> I am getting this error message with this patch:
>
> [ 12%] Building C object CMakeFiles/ustream-ssl.dir/ustream-ssl.c.o
> In file included from
> /home/hauke/openwrt/openwrt/build_dir/target-mipsel_24kc_musl/ustream-ssl-wolfssl/ustream-ssl-2019-08-17-e8f9c22d/ustream-internal.h:27:0,
>                  from
> /home/hauke/openwrt/openwrt/build_dir/target-mipsel_24kc_musl/ustream-ssl-wolfssl/ustream-ssl-2019-08-17-e8f9c22d/ustream-ssl.c:25:
> /home/hauke/openwrt/openwrt/build_dir/target-mipsel_24kc_musl/ustream-ssl-wolfssl/ustream-ssl-2019-08-17-e8f9c22d/ustream-openssl.h:
> In function '__ustream_ssl_set_server_name':
> /home/hauke/openwrt/openwrt/build_dir/target-mipsel_24kc_musl/ustream-ssl-wolfssl/ustream-ssl-2019-08-17-e8f9c22d/ustream-openssl.h:48:2:
> error: implicit declaration of function 'SSL_set_tlsext_host_name'; did
> you mean 'SSL_set_tlsext_debug_arg'? [-Werror=implicit-function-declaration]
>   SSL_set_tlsext_host_name(us->ssl, us->server_name);
>   ^~~~~~~~~~~~~~~~~~~~~~~~
>   SSL_set_tlsext_debug_arg
> cc1: all warnings being treated as errors
> make[6]: *** [CMakeFiles/ustream-ssl.dir/build.make:63:
> CMakeFiles/ustream-ssl.dir/ustream-ssl.c.o] Error 1
>
>
> and this config:
> CONFIG_WOLFSSL_HAS_AES_CCM=y
> CONFIG_WOLFSSL_HAS_ARC4=y
> CONFIG_WOLFSSL_HAS_CHACHA_POLY=y
> CONFIG_WOLFSSL_HAS_DH=y
> CONFIG_WOLFSSL_HAS_NO_HW=y
> CONFIG_WOLFSSL_HAS_OCSP=y
> CONFIG_WOLFSSL_HAS_SESSION_TICKET=y
> CONFIG_WOLFSSL_HAS_TLSV10=y
> CONFIG_WOLFSSL_HAS_TLSV13=y
> CONFIG_WOLFSSL_HAS_WPAS=y
>
>
> Hauke
>
>

I should have mentioned it before, but you need to update the
references from cyassl to wolfssl in openwrt to be able to compile it.
I will send the patch to openwrt once ustream-ssl is updated.
Meanwhile, this should do the trick:

--- a/package/libs/ustream-ssl/Makefile
+++ b/package/libs/ustream-ssl/Makefile
@@ -49,8 +49,8 @@ define Package/libustream-mbedtls
 endef

 ifeq ($(BUILD_VARIANT),wolfssl)
-  TARGET_CFLAGS += -I$(STAGING_DIR)/usr/include/cyassl -DHAVE_SNI
-  CMAKE_OPTIONS += -DCYASSL=on
+  TARGET_CFLAGS += -I$(STAGING_DIR)/usr/include/wolfssl
+  CMAKE_OPTIONS += -DWOLFSSL=on
 endif
 ifeq ($(BUILD_VARIANT),mbedtls)
   CMAKE_OPTIONS += -DMBEDTLS=on

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

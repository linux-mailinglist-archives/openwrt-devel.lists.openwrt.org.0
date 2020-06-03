Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 794DB1ED7A9
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 22:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dzqDYPJNHHEA40bffkdREsvInfJygGnd/DHd0KsGqMI=; b=QzzjXZqJSDqcvlKh2kqX5DWriZ
	BvP7lkoVnguF9MmXEN3KNy8ruWtIMTgfvH7BS0iyq42988NfGKt38N6ffjsS3OTKJIyAPLQDsOTut
	7+5F/FmedbHKX/CxmLoyr+rUPut0ksvOAEMi/Hscbix+LnevQS/epqonJbYeVtFI18LNRiRmJwVXi
	a81kMmT5oCxgPyIRoijDpT0s1GOvSq/Z5PgTqaahriwF5Ge9JguyG4+cfWmSPtEDOOTlDKI7DD+Uc
	IFJYvpGZyiHVvQ9xYmsbyUGBOAvzkssi4LIgZxDp3kUXJ5mzI/21yP6MxU4qtYPtaP9vLIJKGCQVB
	uBbTqtVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgaQ4-00023d-N4; Wed, 03 Jun 2020 20:55:28 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgaPv-000223-RB
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 20:55:23 +0000
Received: by mail-ot1-x342.google.com with SMTP id v17so3067775ote.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jun 2020 13:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=y3A18VxMMXFqgXul7ct2RdeTq8k0yq/q3VpbBnLPwj4=;
 b=bJndCPX3Y7gOfzwiq55fXyIM+GkegR7d/IdMUoKDViowvcQ31fUG9NpKfniWrQ1rGE
 BA7+MNrqAE6+px/JMcf5yz5V/ohQNsxARB18LmGUoNlrJZehU89FziBfvTrsRaSPZx8L
 3ChMHGDmtNX2fF1SATajVVlGbFRfN/7n72GWQEZ6FPr3szOArw18Zv6H+3F4ukbR/h8X
 wlI0hwW6TYaH/fZFcodFqi1VaM1sBgMwa/AMqgJUdh3WFno7fOXi+hqS2IKrwHHbg2hh
 GGr2pLJFfFTkKFzF3YqBxXQ5bXpLgL31e6NxO57pIIkpv1ZoQgcmcxcolD6syP9RdDO3
 2gpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=y3A18VxMMXFqgXul7ct2RdeTq8k0yq/q3VpbBnLPwj4=;
 b=M/PtlFoHxjiYDGLLZsYeOsm+8tXGV5PmQNMXL7cmMHDz+RnTqjod8gQxU5D4coSfvW
 hdVnfNXbmsDwsN3wyEkpDQlsCl/iqOYIUMAGt/IyNe5bRecE5dJIioG/VqBNpTlITCgX
 +hprP/Cvk2AySCtctglP60V0MdmjfSgN2ahgrXw+6lEUEE9+ddgFjdygPctpdlNBkpmH
 3ixAYxsoC1orUyNwkPQ2w6hHNzsPq0vMvrp/or2vF8hqfBv7b0HTmLqyLrSK7DHXBAD8
 30lpH1lZDLQXFxzNTuRIMNtu/IRl7bKS9GqypgqDua1yGy/TavAKRuyTKatYr4g2hjaL
 kUUw==
X-Gm-Message-State: AOAM532YfL9XX9YSuHzU3puEoMEWbKgUtdZDr/C72KrxFK1m6ylYnKWo
 /eAe5jlwTMpgrucgeu97Ue1kqq2/M5AZWQibJWg=
X-Google-Smtp-Source: ABdhPJysSMfQQooXymO+7crdWZu0JFmhY2MrM+x30IyFBo+3zicjlgx1Bdfp+dCwVBQ8AjVcOtHmRTtC73IfgEmvIFc=
X-Received: by 2002:a9d:6557:: with SMTP id q23mr1316810otl.93.1591217718383; 
 Wed, 03 Jun 2020 13:55:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200602225338.2234702-1-rosenp@gmail.com>
 <KU1PR01MB2022E21A6B1C86A45ABD2FBFAD880@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
In-Reply-To: <KU1PR01MB2022E21A6B1C86A45ABD2FBFAD880@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 3 Jun 2020 13:55:07 -0700
Message-ID: <CAKxU2N9OqB5SZUyRX6OmtSds1GxaB7645Y+DjsoCXz6-owEKWQ@mail.gmail.com>
To: Ian Cooper <iancooper@hotmail.com>, 
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_135519_897313_6752633B 
X-CRM114-Status: GOOD (  20.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] libcxxabi: add
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

On Wed, Jun 3, 2020 at 1:33 PM Ian Cooper <iancooper@hotmail.com> wrote:
>
Use Reply All to get this posted to the mailing list.
>
> I got your libcxx-abi compiled. I just put together a quick hack so I didn't have to create new package makefiles for llvm-project or worry too much about versions in the name of the libcxx source, so it's up to you to create the dependencies and make sure the sources are available in the right location at package build time.
>
> It needs the llvm-project source and location of the libcxx source and includes. The llvm-project source is a gigantic 2GB git repo.
That's a no go.
>
> $ du -h -d 1 .
> 2.0G    ./llvm-project
>
> Adding the three lines at the bottom to the CMAKE_OPTIONS got it to compile.
>
> CMAKE_OPTIONS += \
>         -DLIBCXXABI_ENABLE_EXCEPTIONS=ON \
>         -DLIBCXXABI_ENABLE_PEDANTIC=OFF \
>         -DLIBCXXABI_ENABLE_PIC=ON \
>         -DLIBCXXABI_ENABLE_WERROR=OFF \
>         -DLIBCXXABI_USE_LLVM_UNWINDER=OFF \
>         -DLIBCXXABI_USE_COMPILER_RT=OFF \
>         -DLIBCXXABI_ENABLE_THREADS=ON \
>         -DLIBCXXABI_HAS_PTHREAD_API=ON \
>         -DLIBCXXABI_INCLUDE_TESTS=OFF \
>         -DLIBCXXABI_LIBDIR_SUFFIX="" \
>         -DLIBCXXABI_INSTALL_LIBRARY=ON \
>         -DLIBCXXABI_ENABLE_SHARED=OFF \
>         -DLLVM_PATH=$(TOPDIR)/ian/llvm-project \
I don't think this is needed.
>         -DLIBCXXABI_LIBCXX_SRC_DIR=$(BUILD_DIR)/libcxx-10.0.0.src \
>         -DLIBCXXABI_LIBCXX_INCLUDES=$(BUILD_DIR)/libcxx-10.0.0.src/include
This sounds like it can work. However, libcxx depends on libcxxabi. I
think the way to get around this is to make a junk HostBuild that
places the headers in staging_dir.
>
>
> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> > On Behalf Of Rosen Penev
> > Sent: 02 June 2020 23:54
> > To: openwrt-devel@lists.openwrt.org
> > Subject: [OpenWrt-Devel] [PATCH 1/2] libcxxabi: add
> >
> > This will be used for libcxx.
> >
> > Signed-off-by: Rosen Penev <rosenp@gmail.com>
> > ---
> >  package/libs/libcxxabi/Makefile | 64
> > +++++++++++++++++++++++++++++++++
> >  1 file changed, 64 insertions(+)
> >  create mode 100644 package/libs/libcxxabi/Makefile
> >
> > diff --git a/package/libs/libcxxabi/Makefile b/package/libs/libcxxabi/Makefile
> > new file mode 100644 index 0000000000..bde77c250a
> > --- /dev/null
> > +++ b/package/libs/libcxxabi/Makefile
> > @@ -0,0 +1,64 @@
> > +
> > +#
> > +# This is free software, licensed under the GNU General Public License v2.
> > +# See /LICENSE for more information.
> > +#
> > +
> > +include $(TOPDIR)/rules.mk
> > +
> > +PKG_NAME:=libcxxabi
> > +PKG_VERSION:=10.0.0
> > +PKG_RELEASE:=1
> > +
> > +PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).src.tar.xz
> > +PKG_SOURCE_URL:=https://github.com/llvm/llvm-
> > project/releases/download/
> > +llvmorg-$(PKG_VERSION)
> > +PKG_HASH:=e71bac75a88c9dde455ad3f2a2b449bf745eafd41d2d8432253b2
> > 964e0ca1
> > +4e1 PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION).src
> > +
> > +PKG_MAINTAINER:=Rosen Penev <rosenp@gmail.com>
> > PKG_LICENSE:=MIT
> > +PKG_LICENSE_FILES:=LICENSE.txt
> > +
> > +PKG_BUILD_PARALLEL:=1
> > +CMAKE_BINARY_SUBDIR:=build
> > +
> > +include $(INCLUDE_DIR)/package.mk
> > +include $(INCLUDE_DIR)/cmake.mk
> > +
> > +define Package/libcxxabi
> > +  SECTION:=libs
> > +  CATEGORY:=Libraries
> > +  TITLE:=LLVM lib++abi
> > +  URL:=https://libcxxabi.llvm.org/
> > +  DEPENDS:=+libpthread
> > +  BUILDONLY:=1
> > +endef
> > +
> > +define Package/libcxxabi/description
> > +  libc++abi is a new implementation of low level support for a standard C++
> > library.
> > +endef
> > +
> > +CMAKE_OPTIONS += \
> > +     -DLIBCXXABI_ENABLE_EXCEPTIONS=ON \
> > +     -DLIBCXXABI_ENABLE_PEDANTIC=OFF \
> > +     -DLIBCXXABI_ENABLE_PIC=ON \
> > +     -DLIBCXXABI_ENABLE_WERROR=OFF \
> > +     -DLIBCXXABI_USE_LLVM_UNWINDER=OFF \
> > +     -DLIBCXXABI_USE_COMPILER_RT=OFF \
> > +     -DLIBCXXABI_ENABLE_THREADS=ON \
> > +     -DLIBCXXABI_HAS_PTHREAD_API=ON \
> > +     -DLIBCXXABI_INCLUDE_TESTS=OFF \
> > +     -DLIBCXXABI_LIBDIR_SUFFIX="" \
> > +     -DLIBCXXABI_INSTALL_LIBRARY=ON \
> > +     -DLIBCXXABI_ENABLE_SHARED=OFF
> > +
> > +TARGET_CXXFLAGS += -flto
> > +TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed
> > +
> > +define Build/InstallDev
> > +     $(call Build/InstallDev/cmake,$(1))
> > +     $(INSTALL_DIR) $(1)/usr/include/
> > +     $(INSTALL_DATA) $(PKG_BUILD_DIR)/include/*.h $(1)/usr/include/
> > endef
> > +
> > +$(eval $(call BuildPackage,libcxxabi))
> > --
> > 2.26.2
> >
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F198070C
	for <lists+openwrt-devel@lfdr.de>; Sat,  3 Aug 2019 17:50:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mrLDVuOAFlwxtWcfDAFV0JNgZDLJgK08GXavNiFLe0=; b=j6vWkIJsOuVcIh
	+aD1z+NcDNc8esJ+iYyJAjYAY+SBrwBMRwltELen0Vn3VReVol2n5gBYyVt+DzNdku0QKvZ6Yybh+
	mMjCWz+9kuYWV/qiGPWBGIvLt6W/53GlUglDSoXfImTaSY7lZ8sOI5TO10XD4gdD287XRSWVJn7Qq
	S0QsJ1pw2vArftfV3N77UHQzMBpBWT/uGo64NseGISgCy1ZGrwunZWAp8aH+YeVCuOs5iFsQrIzgP
	CrdMQAyxwipg2wZLQgIy2fyi2ba/AGzoxnr4RqYY7SL11T0AdiGgbXIo16LY73j4pWWm+yogGn6f1
	3MSYmYPLMau1rflXmSAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htwHw-0006Rt-Qq; Sat, 03 Aug 2019 15:49:44 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htwHm-0006RY-Re
 for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 15:49:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1564847369;
 bh=tdbd/qfly6errIlVfbNITyY75IIPOE2f0u3c/OfyWkE=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=jQrDfOmDiCfutwtcCPLK/caBmswwoZ32H3UUynJy8kkzfQZhCXBQkTdv3NpHBFkcN
 BKPzlJqR/QtoUztvjyWvoiqBo94Qhv90hyM8NZ8VT6H6xCFDXXbODGQtJIhUlaF0oZ
 KU7FKa0IDsyCJgsrQuCIuXBTXV51hbVa29BqThYE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from darth.lan ([62.14.66.108]) by mail.gmx.com (mrgmx002
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MTjua-1hlAsK3gS8-00QQME; Sat, 03
 Aug 2019 17:49:29 +0200
Date: Sat, 3 Aug 2019 17:49:26 +0200
From: Sebastian Kemper <sebastian_ml@gmx.net>
To: Arnold Schulz <arnysch@gmx.net>
Message-ID: <20190803154926.GB2480@darth.lan>
References: <20190803151356.18733-1-arnysch@gmx.net>
 <20190803151356.18733-2-arnysch@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803151356.18733-2-arnysch@gmx.net>
X-Provags-ID: V03:K1:O8XVVxNKuXULaur02i5Zk8BeWmeLD7msMTj5HOVF4usbplVoTFU
 fOZHC+C4Ny4vOtI81flYkS0jYmLcz3ZjiqnjsM4tKS/CJqYuT1i61ZXgzWibb2HadIc+pM+
 VQi1HeLIeTgm5W6ueHcdtj1YMefKfmrj8mJ+FDJbghflNqTtWdng0veG7AuaI1GSQmy5huA
 v3MaN0g5OpMGh5gVMNB0g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:53N18NStrNY=:CkGwjjcIHRRmoSxE5Yn9B6
 OIJdwLatQOxXKf+DCc2mEZaC8DZqBw/gxockEr20/y+29PSUQjNKgd/pgI3PXhY28uqe2VnWy
 RSLtPhbGeciwtWDbQuwSPHfwXPGQ8mSgL/uVs36Up5RfJ20qX5wKI/c0lg9a8I9uxpDMV/o8X
 CfK4CYoMhIgUjLRPKIPskW9ugX9E4ysh0yNo4Tx1YdmhSg3+AECyPYTCjaVhKUC20RgKpj1RA
 wfyXuto6ocZU71JPq7PB5rk0wcyqlK1mEsrHtqruKuZ7nKAgbJewVDv9vQF2UO6o71+6s6XJ7
 KHku7+mG0p5Q3LvaaT9KMn3QNxVe6/I8LticFOqF7F4UEmuDdpfAzESWZ3ks5CByAxeH9vDik
 rNkm2hTAXEf8NothLCZJC7cnYeCvl/W6Em0Xq4pVDWYXTSekSTjie3ZMO3/tnNPlAG9PgK5cM
 nXLtSDLRHLcHABaBYE5AxBkOqFHnnTOtGb0mgvxBJz4My6GzwzCplPZ8VTjSlUBCYvV6R/T7i
 mKaJHlJUonWIyfCjWpB8lIcHjK3fXor5RDrQKwBEJ3AKEkT18ssS+gnHvVV1G2FT/R0SlZlCY
 f6QNsvZgHVS7xAXky9iVyoJDYaqemqiJrfjtQQ49VRhhq/sPW7tL6zxEZx0gDCn9f9RJGdy7c
 WwbIXRVAgvdJPpaXil9si4+1YuyLR43awus6C6nXkfrL+faDRZAoZoE2NMWTnR6pkJWo6YwQt
 p61EsJnWg7TE5O0m8JpN4lvcrzC83+l/lz+ZeO9gD9jNjJuVTTUY1enjeM62qMWAXidHb0rwx
 9qz0v1MMc7xwhDxamw/ijkHfTh5eOuQdtF+5X2hHh5lc+X6C05tM6Gpiu1nfY+UmprD+wLSfC
 nsSQgjr9oKzpT6c6+ujgLO1tpkqkmcbH3TwrWrrF338buon83mBTMnEFYNCbcHCvT2exgk58E
 tUsHq1VeDKvsAYi2dCt53TdCVvb4VXfdgj69F0Dq4Dwg0LsJzv3mDH/rsSPTD7KzuzX1KeDDV
 UHiz7uQC6dXUf3jSWtI+AX3bvfold6Zw2Pid0u18QjjCbIL5QXP/FB0TLfwBqBb6l7PY5lriT
 Iu/Qv8kh+GWO/DmMiPFuxntbqb5nnn79fV+QnjtAJVet78w+pds1ivpLg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_084935_191237_848EB09E 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sebastian_ml[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [openwrt/telephony 1/2] asterisk16-chan-lantiq:
 Use upstream sources from 2019-09-03
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
Cc: openwrt-devel@lists.openwrt.org, jiri@slachta.eu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, Aug 03, 2019 at 05:13:55PM +0200, Arnold Schulz wrote:
> This solves:
> - Fix build failure due to missing telephony.h in kernel 4.19 sources
> - OpenWrt specific patch+file removed; this stuff is now in upstream
>
> Signed-off-by: Arnold Schulz <arnysch@gmx.net>
> ---
>  net/asterisk-16.x-chan-lantiq/Makefile        | 16 +++----
>  .../files/default.exports                     |  8 ----
>  ...-ast_free-instead-of-malloc-and-free.patch | 43 -------------------
>  3 files changed, 5 insertions(+), 62 deletions(-)
>  delete mode 100644 net/asterisk-16.x-chan-lantiq/files/default.exports
>  delete mode 100644 net/asterisk-16.x-chan-lantiq/patches/01-Use-ast_malloc-and-ast_free-instead-of-malloc-and-free.patch
>
> diff --git a/net/asterisk-16.x-chan-lantiq/Makefile b/net/asterisk-16.x-chan-lantiq/Makefile
> index 5884673..8210c07 100644
> --- a/net/asterisk-16.x-chan-lantiq/Makefile
> +++ b/net/asterisk-16.x-chan-lantiq/Makefile
> @@ -1,5 +1,5 @@
>  #
> -# Copyright (C) 2018 OpenWrt.org
> +# Copyright (C) 2018-2019 OpenWrt.org

Are you a member of OpenWrt? Only members should should change OpenWrt
copyright message.

>  #
>  # This is free software, licensed under the GNU General Public License v2.
>  # See /LICENSE for more information.
> @@ -8,14 +8,14 @@
>  include $(TOPDIR)/rules.mk
>
>  PKG_NAME:=asterisk16-chan-lantiq
> -PKG_VERSION:=20180215
> -PKG_RELEASE:=2
> +PKG_VERSION:=20190803
> +PKG_RELEASE:=1
>
>  PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
>  PKG_SOURCE_URL:=https://github.com/kochstefan/asterisk_channel_lantiq.git
>  PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
> -PKG_SOURCE_VERSION:=c9d68dd06fcd46ac7985df45f8c2b8833e658f8e
> -PKG_MIRROR_HASH:=8666c18b24adf9da3ddf12306fcf0a8b4f56860c256b172bd0ba5c2a7a3ab25e
> +PKG_SOURCE_VERSION:=1d940b38cde0348dfe129d2b764e6faee440c45b
> +PKG_MIRROR_HASH:=ff838ff2a4c5353fadd73806e1513f59f224914582b6ba004165712268bc94e5
>  PKG_SOURCE_PROTO:=git
>
>  PKG_LICENSE:=GPL-2.0
> @@ -43,12 +43,6 @@ define Package/$(PKG_NAME)/conffiles
>  /etc/asterisk/lantiq.conf
>  endef
>
> -define Build/Prepare
> -	$(call Build/Prepare/Default)
> -	$(INSTALL_DATA) ./files/default.exports \
> -		$(PKG_BUILD_DIR)/src/channels/chan_lantiq.exports
> -endef
> -

Why remove this? I put this in to recreate what happens during an
in-tree build (adding chan-lantig files into Asterisk source tree and
compiling it with Asterisk).

>  define Build/Compile
>  	cd $(PKG_BUILD_DIR)/src/channels && \
>  	$(TARGET_CC) -o chan_lantiq.o -c chan_lantiq.c -MD -MT chan_lantiq.o \
> diff --git a/net/asterisk-16.x-chan-lantiq/files/default.exports b/net/asterisk-16.x-chan-lantiq/files/default.exports
> deleted file mode 100644
> index 6d9344d..0000000
> --- a/net/asterisk-16.x-chan-lantiq/files/default.exports
> +++ /dev/null
> @@ -1,8 +0,0 @@
> -{
> -	global:
> -		/* See main/asterisk.exports.in for an explanation why this is
> -		 * needed. */
> -		_IO_stdin_used;
> -	local:
> -		*;
> -};
> diff --git a/net/asterisk-16.x-chan-lantiq/patches/01-Use-ast_malloc-and-ast_free-instead-of-malloc-and-free.patch b/net/asterisk-16.x-chan-lantiq/patches/01-Use-ast_malloc-and-ast_free-instead-of-malloc-and-free.patch
> deleted file mode 100644
> index f913b18..0000000
> --- a/net/asterisk-16.x-chan-lantiq/patches/01-Use-ast_malloc-and-ast_free-instead-of-malloc-and-free.patch
> +++ /dev/null
> @@ -1,43 +0,0 @@
> -commit 30f9a094c1c60e0d68e4ea189f48ecb47aebb485
> -Author: arny <arnysch@gmx.net>
> -Date:   Thu May 2 20:07:28 2019 +0200
> -
> -    Use ast_malloc and ast_free instead of malloc and free
> -    in order to get rid of build errors with asterisk16 in OpenWrt
> -
> -    Signed-off-by: arny <arnysch@gmx.net>
> -
> -diff --git a/src/channels/chan_lantiq.c b/src/channels/chan_lantiq.c
> -index a8fc869..90002ab 100644
> ---- a/src/channels/chan_lantiq.c
> -+++ b/src/channels/chan_lantiq.c
> -@@ -563,9 +563,9 @@ lantiq_dev_binary_buffer_create(const char *path, uint8_t **ppBuf, uint32_t *pBu
> - 		goto on_exit;
> - 	}
> -
> --	*ppBuf = malloc(file_stat.st_size);
> -+	*ppBuf = ast_malloc(file_stat.st_size);
> - 	if (*ppBuf == NULL) {
> --		ast_log(LOG_ERROR, "binary file %s memory allocation failed\n", path);
> -+		// Message already logged by ast_malloc
> - 		goto on_exit;
> - 	}
> -
> -@@ -583,7 +583,7 @@ on_exit:
> - 		fclose(fd);
> -
> - 	if (*ppBuf != NULL && status)
> --		free(*ppBuf);
> -+		ast_free(*ppBuf);
> -
> - 	return status;
> - }
> -@@ -609,7 +609,7 @@ static int32_t lantiq_dev_firmware_download(int32_t fd, const char *path)
> - 	}
> -
> - 	if (firmware != NULL)
> --		free(firmware);
> -+		ast_free(firmware);
> -
> - 	return 0;
> - }
> --
> 2.20.1
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

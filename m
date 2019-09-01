Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83745A4B5B
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Sep 2019 21:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JSUKdV0GXIwbi8Ojg9vi1gaWD7WpAu5Bn4qsTdUPEFw=; b=PjEQQPhMbyY+rJ
	3n/3TiYGLTjv9JHZmkbjjTiRikpApmwGC0sOnh9QgsmazBHWKva8NKqe8/lOIykYEYfkXTStdostJ
	0TeXWj+tJWTM3WyX1hd462Pze5eEG76RFDPO48buhUeiyGRjPRzt5fbSQjSA0Tk4BD6HpZwxsJ+M9
	HT68mKfGJBMMczXItkco2mOax/XdSZfQ8kFSvlAIJbAy1VsOL2/+8tjMB2KnzVcABtQxjoiFulutO
	jv19zPrBxGeatTf8GBeLytle6xzjgUw3vnp6s9ysHAHrLhL+lHkMMKclzcJsJrXxjmPm0S+Qg9bP1
	1rh/7spi1x00xG7oNbVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4VTW-00059K-SF; Sun, 01 Sep 2019 19:25:22 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4VTN-00058r-4Y
 for openwrt-devel@lists.openwrt.org; Sun, 01 Sep 2019 19:25:15 +0000
Received: by mail-oi1-x244.google.com with SMTP id k22so8993178oiw.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Sep 2019 12:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kq+4xkFM2SxtcIbZ35vpbV0xE3x1gJ+LJuHBeHHWCsI=;
 b=urD3u5skGx6VBh2FCuNS2XvOj5SkkG47bFXiSPkMhJXTFeGtmYciPeyAYw7Yp4Cwg2
 1/bBOnidC1kNlREfeE3iEciakZ3LNMNEC0vbxtuqttOgG8epcr6n2cUt4hoUO2+Ppb5G
 nMUwVqZhEKr3H7rwp8qph/HX0Wq7pXBJVPklzN/1H8oOCzzBp+ROpV+Ax5vrzVlbKG7w
 Zi9cGA4ygh7ZLWXnunSyrcYCYmcRlF1lMZUUNEQ+hTbYsEpe/3Sdv1PBIHtiVfIGfRCP
 yE/rguyMN+40WD3w7Xw1A/+2c0K5th+V69wnZTtL8gn1GCZKS4DDKyl8jE3EH+hVhg0U
 /f7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kq+4xkFM2SxtcIbZ35vpbV0xE3x1gJ+LJuHBeHHWCsI=;
 b=qpNk89eQbZvZ9eOjKjZvg6Y1aRa2vEuOVMCN/99aM+3U4LFkGRIIOUfqAaXR9LZlMM
 jlfn93TS5bI31G7zlq1r7k8EKBsd9b8nqj6ba/n2GtDjw/lpyJXDWdw+sQgMWAtGDBcw
 egw3m4YoGFT9UeQp6aWlbEzkRPrZVAnHxwHhTHTulqAL55VHRv+/RDiuQRU9GadETipJ
 qNrsbVMObs0aM0vsMJb/ypMa91+DogX3UiB6jFcBBYcVqfyPvgEYvYXabltBL9TBudVY
 a6gdJnv+LPJQfTTOA/wEdEf6JvIwe01sMwWN+RF4b2e/Tgx5vNCEyxiFEZONHlhrQAY3
 g+dQ==
X-Gm-Message-State: APjAAAXPvETF3KqnnjBnTN82lVfHQKe/U+8v1uCGMlxOYg0pbplV8HPr
 nGYj2UaXNxNYDtblibiaSkoXnn+C7+bCv4SC/eM=
X-Google-Smtp-Source: APXvYqzg06v3F4DkhOhku9TDuxlnCY7jzbHS/FJlLxs4MccyolH6FNwKQMyWGxpXTSOxHI5mbc3uPQZngAFCssW3iTk=
X-Received: by 2002:aca:cf57:: with SMTP id f84mr17406106oig.40.1567365912065; 
 Sun, 01 Sep 2019 12:25:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190901183401.29040-1-pepe.schlehofer@gmail.com>
In-Reply-To: <20190901183401.29040-1-pepe.schlehofer@gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Sun, 1 Sep 2019 12:25:01 -0700
Message-ID: <CAKxU2N-_kem4A_3L7WHg-2JcmP1Uf9fgci56e9ajw=ZF_piwzQ@mail.gmail.com>
To: Josef Schlehofer <pepe.schlehofer@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_122513_206844_3E0485B8 
X-CRM114-Status: GOOD (  22.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] bzip2: Fix CVE-2019-12900
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, Sep 1, 2019 at 11:34 AM Josef Schlehofer
<pepe.schlehofer@gmail.com> wrote:
>
> More details about this CVE:
> https://nvd.nist.gov/vuln/detail/CVE-2019-12900
>
> Signed-off-by: Josef Schlehofer <pepe.schlehofer@gmail.com>
> ---
This is for 18.06. Usually notes like that are placed here below the --- line.
>  package/utils/bzip2/Makefile                  |  2 +-
>  .../bzip2/patches/020-CVE-2019-12900.patch    | 65 +++++++++++++++++++
>  2 files changed, 66 insertions(+), 1 deletion(-)
>  create mode 100644 package/utils/bzip2/patches/020-CVE-2019-12900.patch
>
> diff --git a/package/utils/bzip2/Makefile b/package/utils/bzip2/Makefile
> index ea2fc76833..0bf168c229 100644
> --- a/package/utils/bzip2/Makefile
> +++ b/package/utils/bzip2/Makefile
> @@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
>
>  PKG_NAME:=bzip2
>  PKG_VERSION:=1.0.6
> -PKG_RELEASE:=4
> +PKG_RELEASE:=5
>
>  PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
>  PKG_SOURCE_URL:=http://www.bzip.org/$(PKG_VERSION)
> diff --git a/package/utils/bzip2/patches/020-CVE-2019-12900.patch b/package/utils/bzip2/patches/020-CVE-2019-12900.patch
> new file mode 100644
> index 0000000000..3f08c789ea
> --- /dev/null
> +++ b/package/utils/bzip2/patches/020-CVE-2019-12900.patch
> @@ -0,0 +1,65 @@
> +From 812a898b7622de90e98f103ff7fed0984e4548e4 Mon Sep 17 00:00:00 2001
> +From: Mark Wielaard <mark@klomp.org>
> +Date: Wed, 3 Jul 2019 01:28:11 +0200
> +Subject: [PATCH] Accept as many selectors as the file format allows.
> +
> +But ignore any larger than the theoretical maximum, BZ_MAX_SELECTORS.
> +
> +The theoretical maximum number of selectors depends on the maximum
> +blocksize (900000 bytes) and the number of symbols (50) that can be
> +encoded with a different Huffman tree. BZ_MAX_SELECTORS is 18002.
> +
> +But the bzip2 file format allows the number of selectors to be encoded
> +with 15 bits (because 18002 isn't a factor of 2 and doesn't fit in
> +14 bits). So the file format maximum is 32767 selectors.
> +
> +Some bzip2 encoders might actually have written out more selectors
> +than the theoretical maximum because they rounded up the number of
> +selectors to some convenient factor of 8.
> +
> +The extra 14766 selectors can never be validly used by the decompression
> +algorithm. So we can read them, but then discard them.
> +
> +This is effectively what was done (by accident) before we added a
> +check for nSelectors to be at most BZ_MAX_SELECTORS to mitigate
> +CVE-2019-12900.
> +
> +The extra selectors were written out after the array inside the
> +EState struct. But the struct has extra space allocated after the
> +selector arrays of 18060 bytes (which is larger than 14766).
> +All of which will be initialized later (so the overwrite of that
> +space with extra selector values would have been harmless).
> +---
> + compress.c   |  2 +-
> + decompress.c | 10 +++++++-
> + 2 files changed, 8 insertions(+), 2 deletions(-)
> +
> +--- a/compress.c
> ++++ b/compress.c
> +@@ -454,7 +454,7 @@ void sendMTFValues ( EState* s )
> +
> +    AssertH( nGroups < 8, 3002 );
> +    AssertH( nSelectors < 32768 &&
> +-            nSelectors <= (2 + (900000 / BZ_G_SIZE)),
> ++            nSelectors <= BZ_MAX_SELECTORS,
> +             3003 );
> +
> +
> +--- a/decompress.c
> ++++ b/decompress.c
> +@@ -296,8 +296,14 @@ Int32 BZ2_decompress ( DState* s )
> +             j++;
> +             if (j >= nGroups) RETURN(BZ_DATA_ERROR);
> +          }
> +-         s->selectorMtf[i] = j;
> ++         /* Having more than BZ_MAX_SELECTORS doesn't make much sense
> ++            since they will never be used, but some implementations might
> ++            "round up" the number of selectors, so just ignore those. */
> ++         if (i < BZ_MAX_SELECTORS)
> ++           s->selectorMtf[i] = j;
> +       }
> ++      if (nSelectors > BZ_MAX_SELECTORS)
> ++        nSelectors = BZ_MAX_SELECTORS;
> +
> +       /*--- Undo the MTF values for the selectors. ---*/
> +       {
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

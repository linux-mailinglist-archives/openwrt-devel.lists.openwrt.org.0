Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 253AA1F3F94
	for <lists+openwrt-devel@lfdr.de>; Tue,  9 Jun 2020 17:38:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bDYKtL4h7JqlIrtY3zktaKCmbZgepryXXBPOpZnLn64=; b=XpGE4Ic2F2NjN7
	Ix7an6WX7NfnoKOpn+Rtyo43HBRpkqCQMm8DBcrKzNN8qCJIipXfQPoNGFlGjbJ1i6TKyDwAnBQuu
	3+Yg7SppYeFBzR8RI+H7/mfW/UNAPr+2ckQwBJDx0cmVShyK72sEaC7QZCiMtMfkbblIdiTm+kB5T
	JTNOQfW+KDgKlqk0lMUbRWj3rY6syQ6FV9/XMv4J0z82L2RlWG/NPJfRaUPByJ9w+GxUEs13wObdI
	RsKaZVVo8DFbz3477BF0zcH0cD4mzsBRuTrGEUpi2OlUDrkPC4cEdME6tOWHLyc3skjCOwfbW7a/y
	jbYVPScJ55OjhR1iLcBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jigKQ-0001Kg-BT; Tue, 09 Jun 2020 15:38:18 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jigK8-0001FG-JD
 for openwrt-devel@lists.openwrt.org; Tue, 09 Jun 2020 15:38:02 +0000
Received: by mail-oi1-x229.google.com with SMTP id c194so19145284oig.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 09 Jun 2020 08:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZN8EWf5Axa9bd7Fag4sEFtHQD8v5su9/pil86bCz/5Q=;
 b=CGE9OXccW8vdp8zoiE7jCVHEeDmJT4DIC9gDWiPyG30vNL8T8EikZBUe9r2tw7iEXg
 ujsvGux2DtSiITZ6AcrMbdwhh1u5m3Qxn9ppJS7JqWDOYnqXubdUwWYyMsGXLtKhoukG
 BtLiUWIZTjKsyjmEJLajU/3pUT/a6xYOOa6IYKg4Xn8xF9fsD0vPqyovDpBBx028rLDc
 XfOuqyHuFv8QvXnfsJ4GL3rX16kqqlXuZverclsl01cn7C1F5bMGDR/R5mwUvXtqTPXb
 /YSELsKpcXkdGEsL5SMht5++OnzzU5N1RC3SWR4NWPIyEES4O2TXKCyOFfCgu8ij6nH5
 ZEnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZN8EWf5Axa9bd7Fag4sEFtHQD8v5su9/pil86bCz/5Q=;
 b=o3gGFzuKxHFQ3iPnzf5+R1qX8zvzZNtryyhxv7DlDZW/zaCMNSf3iByB0UYyvOIeS0
 i2nGzI0dYD/tUS0ZNt0MyAqx172n5aYYXa9bOJKtLkFDR/iSTE07xrX9A4fIzSByVd3r
 gp3v7ta8Q2pTIX60sw1bWLLPW3NgTaxeJsEzACVR7eg6Cu8w1bcROANjNy8jj1ZzFWcV
 mlBjxmzQ5OF6bLsG32962QJCSgWtH1dIfHiGSg9XnSz9BXMSXPtWFn8niUrX7kUbb8pW
 sPPxqJeI2a+dXj/LXG86VLS3qrkLKXtW2edMmh/w+pHHdRhzAjxKobQ9VPuTsRTGqGiU
 IlYw==
X-Gm-Message-State: AOAM532EqdZi/lu2jslNwkEodKmAFfvOv55RRviZgp7tGIHLEkOMekDc
 xdSwSSV3k1AjGlfmxVvLj6JaEFWZIzcUr/Gh7AU=
X-Google-Smtp-Source: ABdhPJwieM5dBDqrwa/8LIe78iERlGm9saXxduTKLeJqSjr+UEfzg8FFjdQfapm9Nyek7qR+rG8pk6pZaIROE0KINn8=
X-Received: by 2002:aca:4705:: with SMTP id u5mr4133897oia.40.1591717078689;
 Tue, 09 Jun 2020 08:37:58 -0700 (PDT)
MIME-Version: 1.0
References: <11126f86-06ea-a03b-5eaf-716542dc3b25@softart-ge.com>
In-Reply-To: <11126f86-06ea-a03b-5eaf-716542dc3b25@softart-ge.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Tue, 9 Jun 2020 08:37:47 -0700
Message-ID: <CAKxU2N-OEr=taSHy64tHWNoW-T2Ef=3qw20x=TpcD8RLKah0GA@mail.gmail.com>
To: Reiner Karlsberg <karlsberg@softart-ge.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_083800_687366_DC79D496 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:229 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Build error on latest trunk: LuaJIT
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

On Tue, Jun 9, 2020 at 8:19 AM Reiner Karlsberg
<karlsberg@softart-ge.com> wrote:
>
> make -j1 -C /etc/openwrt/WE826/build_dir/target-mipsel_24kc_musl/LuaJIT-2.1.0-beta3 HOST_CC="gcc -O2
> -I/etc/openwrt/WE826_PCS3/staging_dir/host/include -I/etc/openwrt/WE826/staging_dir/hostpkg/include
> -I/etc/openwrt/WE826_PCS3/staging_dir/target-mipsel_24kc_musl/host/include -m32" CROSS="mipsel-openwrt-linux-musl-"
> DPREFIX=/etc/openwrt/WE826/build_dir/target-mipsel_24kc_musl/LuaJIT-2.1.0-beta3/ipkg-install/usr PREFIX=/usr
> TARGET_SYS=Linux TARGET_CFLAGS="-Os -pipe -mno-branch-likely -mips32r2 -mtune=24kc -fno-caller-saves -fno-plt
> -fhonour-copts -Wno-error=unused-but-set-variable -Wno-error=unused-result -msoft-float
> -ffile-prefix-map=/etc/openwrt/WE826_PCS3/build_dir/target-mipsel_24kc_musl/LuaJIT-2.1.0-beta3=LuaJIT-2.1.0-beta3
> -Wformat -Werror=format-security -fstack-protector -D_FORTIFY_SOURCE=1 -Wl,-z,now -Wl,-z,relro" BUILDMODE=dynamic
> make[4]: Entering directory '/etc/openwrt/WE826/build_dir/target-mipsel_24kc_musl/LuaJIT-2.1.0-beta3'
>
> ==== Building LuaJIT 2.1.0-beta3 ====
> make -C src
> make[5]: Entering directory '/etc/openwrt/WE826/build_dir/target-mipsel_24kc_musl/LuaJIT-2.1.0-beta3/src'
> HOSTCC    host/minilua.o
> In file included from /usr/lib/gcc/x86_64-linux-gnu/9/include-fixed/limits.h:194,
>                   from /usr/lib/gcc/x86_64-linux-gnu/9/include-fixed/syslimits.h:7,
>                   from /usr/lib/gcc/x86_64-linux-gnu/9/include-fixed/limits.h:34,
>                   from host/minilua.c:33:
> /usr/include/limits.h:26:10: fatal error: bits/libc-header-start.h: No such file or directory
>     26 | #include <bits/libc-header-start.h>
>        |          ^~~~~~~~~~~~~~~~~~~~~~~~~~
>
Needs 32-bit gcc installed on the host.
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

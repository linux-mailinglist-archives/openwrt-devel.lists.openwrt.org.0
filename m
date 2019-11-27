Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A57FE10B179
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 15:35:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wDuDF6NGt0fQwDjacAUWoOIvQKTmYxHftWC9c1035/4=; b=AvP9aobIvlSA8j0Yz+BqnjEQd
	V4ePr8WULjHyQGl1P6WMp0M4vNW0dTnt+86+LgMaAoHavcZAjUxicQT6h8+eakY3Zv7UraVXAtUwe
	Tl/xfvzhyqKoRyWzM3KgOpcDFOLFa3WGInyEIsk1BlzDPBpGibY/lnunwjIMaH0vGp1ocL4RfP73V
	K8+ao+pvhkIbRwSUSNDrm3rgOXRYj4fHsfhJWeV0WhKU8bI6Vk+wUqJlWDDVUfrAZf2e83CJUkeFs
	J012phfUczz49asyGsTfi6730HNRIT13Rih/D0TScDw2MEADy7QXrGRhARnLNGTxaiVvXDrTaqASO
	RjnlAoT9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZyPk-00057h-DW; Wed, 27 Nov 2019 14:35:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZyPd-00057B-EF
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 14:35:26 +0000
Received: by mail-wm1-x342.google.com with SMTP id n5so7778864wmc.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 27 Nov 2019 06:35:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language;
 bh=5Px62/HHH1ux0oxHGCgM9eG6wZpv5gs6GpGPS2UnJws=;
 b=boNwA+vvCJx+VsrT3Ft+sqzgdtjHCjBNRdXod58NQYncxPVgeBdfyUtQoPoIBSBUnA
 U8wNROr6n+S7EHknc5TOjhp8rn0+32PpkFRc+tLscTC6BoiCcL5LdBlRiYnBX6kRDFwT
 YZ4NcfSgVrg0YDecUP+DdcV0VS7alp1uZL94FX54H4hRKEzZzvm2EogFbCDf8PsXpIBF
 0pro1pjNUd50pe1AUHoohlDePePZHmos4IRfSiEx6L4QT1QX917eaRgIaYard7qpi03y
 cDoxFgXauwRRw0IEnZzDD1tJ/b/oQj0okSBXa4jkKeQj/XmHwxj945R5wRSOLMUPcmNL
 t9Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=5Px62/HHH1ux0oxHGCgM9eG6wZpv5gs6GpGPS2UnJws=;
 b=ZKchfHwS5q58I4J8NHtcVGaAdUYRj02OUnwFPjRadL9rdix4f3CpIDlRHgU7bLpCtN
 6F9EHRWSTYeQuC9hJoNbo0VgMkm3RtbOnCR5EX+D1QVgrl5dg1vRysZhTlz3WxQ//uUZ
 w3F1l9fIDFyLKW7ApBUtVKvQujooP8Rq0CLem/gmhu16d0L5n0DPP2yy2yud85eOIfJn
 /i6HddSbmJhFI7W8xDaW4OPPRIzUGEFSf0ES1pVC0XTlz051ke+YvNq4lpPgUWCpGOeJ
 ogun/FAjUfHSL6/a+eVryF6wS+dHepRawsr0aRn+MeUmgmAqRH1koWZsp2URcqS7n2C8
 fyNQ==
X-Gm-Message-State: APjAAAXuURkkcghbmvex9gzTswURB2JN5fBU+hPBcW4aBuApTiHAC6sx
 sqwHyNoneIfUInddaraBpwO+hDIJ+cQ=
X-Google-Smtp-Source: APXvYqznqIHm3iw1Js9IU8UmAzNvBlBxpXZuzjISu5iEjKCOSnV7XV/6mcTnouKQ+9eLzGLGtu70qw==
X-Received: by 2002:a05:600c:3cd:: with SMTP id
 z13mr4679268wmd.105.1574865323790; 
 Wed, 27 Nov 2019 06:35:23 -0800 (PST)
Received: from mamamia.internal (a89-183-60-41.net-htp.de. [89.183.60.41])
 by smtp.gmail.com with ESMTPSA id y139sm2554383wmd.24.2019.11.27.06.35.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 Nov 2019 06:35:23 -0800 (PST)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20191125224418.266082-1-rosenp@gmail.com>
 <20191127104917.GB37269@meh.true.cz>
 <8b1128c5-b171-afa1-4bac-c8e0aa9a7ece@gmail.com>
 <20191127121948.GD37269@meh.true.cz>
From: Andre Heider <a.heider@gmail.com>
Message-ID: <161dbb27-826e-c066-1ddb-951e229e7adf@gmail.com>
Date: Wed, 27 Nov 2019 15:35:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191127121948.GD37269@meh.true.cz>
Content-Type: multipart/mixed; boundary="------------927702D1A41EA9E43905CD32"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_063525_548691_9C2025A8 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (a.heider[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCHv3] tools/pkg-config: Replace with pkgconf
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
Cc: openwrt-devel@lists.openwrt.org, Rosen Penev <rosenp@gmail.com>
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--------------927702D1A41EA9E43905CD32
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 27/11/2019 13:19, Petr Štetiar wrote:
> Andre Heider <a.heider@gmail.com> [2019-11-27 12:26:39]:
> 
>> I didn't pursue upstreaming it because it looks like merge request at github
>> are ignored and I didn't feel like signing up at upstreams own page.
> 
>   git send-email --to '~kaniini/pkgconf@lists.sr.ht' your.patch
> 
> doesnt work?

No clue, just sent the attached version there.

@Rosen
You might wanna use this patch instead. An alternative would be to catch 
--version in the wrapper and don't add additional arguments in that case.

Regards,
Andre

--------------927702D1A41EA9E43905CD32
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-Revert-main-assume-modversion-insted-of-version-if-o.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-Revert-main-assume-modversion-insted-of-version-if-o.pa";
 filename*1="tch"

From b1eec6b27560928fc9b111164c8abd7d5e527588 Mon Sep 17 00:00:00 2001
From: Andre Heider <a.heider@gmail.com>
Date: Wed, 27 Nov 2019 15:21:42 +0100
Subject: [PATCH] Revert "main: assume --modversion insted of --version if
 other flags or module names are provided"

This reverts commit 12a0eb124cea85586e57f33c91a1e4c73459eef6.

This "user friendly" behavior is actually detrimental. pkg-config is very
often wrapped in a shell script of cross-compiling toolchains. Such wrappers
may pass extra arguments, such as --static, (reasonably) not expecting that
to break --version. Some build systems (meson being one example) use
--version to determine whether pkg-config is usable. Naturally, the wrappers
fail this test, even though they would've worked with the original pkg-config.

Fixes #6
---
 cli/main.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/cli/main.c b/cli/main.c
index 563ec8f..fc698a4 100644
--- a/cli/main.c
+++ b/cli/main.c
@@ -1005,18 +1005,8 @@ main(int argc, char *argv[])
 
 	if ((want_flags & PKG_VERSION) == PKG_VERSION)
 	{
-		if (argc > 2)
-		{
-			fprintf(stderr, "%s: --version specified with other options or module names, assuming --modversion.\n", argv[0]);
-
-			want_flags &= ~PKG_VERSION;
-			want_flags |= PKG_MODVERSION;
-		}
-		else
-		{
-			version();
-			return EXIT_SUCCESS;
-		}
+		version();
+		return EXIT_SUCCESS;
 	}
 
 	if ((want_flags & PKG_HELP) == PKG_HELP)
-- 
2.24.0


--------------927702D1A41EA9E43905CD32
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--------------927702D1A41EA9E43905CD32--


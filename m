Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5521D79CE
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 May 2020 15:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v2eeUCrtOsCE11+FnRnyQt7B8bWaz8Ms+XxcdTOT4XM=; b=Mrax6CUS+/Qk9WmbVNeeuo6tb
	/XGCKG5seruYadiJqR1hQvE98cQ3WAaaq5oQn/5Et0MgyD6/sm9dN3salEbZlRIsW1CSmWa1530U3
	gOKHH8153HzqpIEaPtjSE1JAgICfBQNw9Vt/6SYmvsNJ+KPTCxdWf1aJKGJtXuY8fTYo29v/1a6uJ
	WkjWvXcR7M8H2AaWopgaiOAfeZaXZ5gaUW9YM5XHn29uPfpN1sARYUSsCzy3rcghgxOvQpa8hM19m
	pnVFE3ONhCRzOfFpKyrSld/s+RXs0eqK7VBhZGa2RIdDrCVzp8vnNaIkBEiQ6E50h6OY8iGmjBNXB
	2HrspzCeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafoH-0003g5-PG; Mon, 18 May 2020 13:28:01 +0000
Received: from [86.122.15.174] (helo=mail.insteeldesign.ro)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafo8-0003f4-I5
 for openwrt-devel@lists.openwrt.org; Mon, 18 May 2020 13:27:54 +0000
Received: from [10.160.20.20] (unknown [188.24.8.194])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: luci@powerneth.ro)
 by mail.insteeldesign.ro (Postfix) with ESMTPSA id A17C1220E255
 for <openwrt-devel@lists.openwrt.org>; Mon, 18 May 2020 16:27:45 +0300 (EEST)
To: openwrt-devel@lists.openwrt.org
References: <20200518130415.54668-1-linus.walleij@linaro.org>
From: Lucian Cristian <luci@powerneth.ro>
Message-ID: <6f175a09-e2ca-ff18-0efc-c9c183c7505d@powerneth.ro>
Date: Mon, 18 May 2020 16:27:43 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200518130415.54668-1-linus.walleij@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_062752_949985_AF4F384D 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] [PATCH] gemini: Add samba4 to the NAS images
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
Content-Type: multipart/mixed; boundary="===============0086166293109510859=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============0086166293109510859==
Content-Type: multipart/alternative;
 boundary="------------33DD233009F4452DB60EA34A"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------33DD233009F4452DB60EA34A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18.05.2020 16:04, Linus Walleij wrote:
> We used to have samba36 as a package in the NAS images
> but that was retired in commit 73fa1aba94f5
> "samba36: Remove" however it is nice to have a fileserver
> so put samba4 in the package instead.
>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>   target/linux/gemini/image/Makefile | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/target/linux/gemini/image/Makefile b/target/linux/gemini/image/Makefile
> index a155939b8cd6..17e07897af04 100644
> --- a/target/linux/gemini/image/Makefile
> +++ b/target/linux/gemini/image/Makefile
> @@ -141,7 +141,7 @@ GEMINI_NAS_PACKAGES := $(DEFAULT_PACKAGES.nas) \
>   		kmod-fs-btrfs kmod-fs-cifs kmod-fs-nfs \
>   		kmod-fs-nfsd kmod-fs-ntfs kmod-fs-reiserfs kmod-fs-vfat \
>   		kmod-nls-utf8 kmod-usb-storage-extras kmod-hwmon-drivetemp \
> -		cfdisk e2fsprogs badblocks \
> +		cfdisk e2fsprogs badblocks samba4-server \
>   		partx-utils
>   
>   # The DIR-685 flash layout is kernel in WRGG format, padded and followed

Hi,

samba4 is not in the main repo and there was an attempt for ksmbd-tools 
to be ported on main repo, it's faster and smaller


Regards


--------------33DD233009F4452DB60EA34A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#cece00" bgcolor="#000000">
    <div class="moz-cite-prefix">On 18.05.2020 16:04, Linus Walleij
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200518130415.54668-1-linus.walleij@linaro.org">
      <pre class="moz-quote-pre" wrap="">We used to have samba36 as a package in the NAS images
but that was retired in commit 73fa1aba94f5
"samba36: Remove" however it is nice to have a fileserver
so put samba4 in the package instead.

Signed-off-by: Linus Walleij <a class="moz-txt-link-rfc2396E" href="mailto:linus.walleij@linaro.org">&lt;linus.walleij@linaro.org&gt;</a>
---
 target/linux/gemini/image/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/gemini/image/Makefile b/target/linux/gemini/image/Makefile
index a155939b8cd6..17e07897af04 100644
--- a/target/linux/gemini/image/Makefile
+++ b/target/linux/gemini/image/Makefile
@@ -141,7 +141,7 @@ GEMINI_NAS_PACKAGES := $(DEFAULT_PACKAGES.nas) \
 		kmod-fs-btrfs kmod-fs-cifs kmod-fs-nfs \
 		kmod-fs-nfsd kmod-fs-ntfs kmod-fs-reiserfs kmod-fs-vfat \
 		kmod-nls-utf8 kmod-usb-storage-extras kmod-hwmon-drivetemp \
-		cfdisk e2fsprogs badblocks \
+		cfdisk e2fsprogs badblocks samba4-server \
 		partx-utils
 
 # The DIR-685 flash layout is kernel in WRGG format, padded and followed
</pre>
    </blockquote>
    <p>Hi,</p>
    <p>samba4 is not in the main repo and there was an attempt for
      ksmbd-tools to be ported on main repo, it's faster and smaller</p>
    <p><br>
    </p>
    <p>Regards<br>
    </p>
  </body>
</html>

--------------33DD233009F4452DB60EA34A--


--===============0086166293109510859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0086166293109510859==--


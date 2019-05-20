Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1419923870
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 May 2019 15:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KsmcdZGN/ZV/VqzwZHhkAGPYGXFgt3ZWg81Vv8XDU6E=; b=TSTUSQx0aBSU6xjUig/RbTrkm
	TNbhZeXYN164ZV9QutQ/7xVAbIy40dUZwjp7WwMq+YtmeeQpBzYy1cO7T/wd1gzQuzggSK47Ep81K
	FZdwODT82NRV+GKNFBiX+adL/L35oGxCu2yX7rPVb0X6jDXOK539hPg7BgWShSuIXPBt23+YbCqQh
	GsQ7TkOJnUGJdGZ/5lqAI1vW+csCF3b23DzvnZRpLWNWYIhBOsxBvtpLNpU3Gu5O9srHv9SIHoxtJ
	SKgFZvA2PsW/H+U32RHX/ftm7zUX3dIhRrorubi3wOKOYmW0H0WR0dm9VcZDznEMikGcDPjSXqfNj
	jY8p/PRvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSiYs-0006t3-Gm; Mon, 20 May 2019 13:42:42 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSiYm-0006sR-Q9
 for openwrt-devel@lists.openwrt.org; Mon, 20 May 2019 13:42:38 +0000
Received: from ubuntu.pn.wagsky.com (c-69-181-42-248.hsd1.ca.comcast.net
 [69.181.42.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 1BFCC3B5D6;
 Mon, 20 May 2019 06:42:34 -0700 (PDT)
To: =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>,
 openwrt-devel@lists.openwrt.org
References: <20190520101443.9192-1-bjorn@mork.no>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <26fb4086-42b5-a102-0bc7-cf17972c2823@allycomm.com>
Date: Mon, 20 May 2019 06:42:33 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520101443.9192-1-bjorn@mork.no>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_064236_855122_D1BE2458 
X-CRM114-Status: GOOD (  26.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] [PATCH] upgrade: nand: fix board_name assumtions
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Francois Berder <francois.berder@imgtec.com>,
 Matti Laakso <matti.laakso@outlook.com>,
 Mayank Sirotiya <Mayank.Sirotiya@imgtec.com>,
 Ian Pozella <Ian.Pozella@imgtec.com>,
 Abhijit Mahajani <Abhijit.Mahajani@imgtec.com>,
 =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 Sean Kelly <Sean.Kelly@imgtec.com>
Content-Type: multipart/mixed; boundary="===============1276672801005447914=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============1276672801005447914==
Content-Type: multipart/alternative;
 boundary="------------B24278643CF9E83AE92DD137"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------B24278643CF9E83AE92DD137
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

cc-ing primary Imgtec / pistachio / Creator Ci40 contributors identified

On 5/20/19 3:14 AM, Bjørn Mork wrote:

> nand_do_platform_check assumes that the current board name is
> used as-is in the tar file sysupgrade directory.  This fails
> for any image supporting multiple device names, and it also
> fails if the board_name contains a comma.
>
> Signed-off-by: Bjørn Mork <bjorn@mork.no>
> ---
> This is a local workaround I'va had lying around for a while.  Please
> consider if it makes any sense at all, or if there are better ways
> to solve the problem.
>
> I don't have an actual upstreamed usecase, as this is an issue I've
> met while trying to prepare for a never-finished ZyXEL WAP6805
> support...
>
>
>
> Bjørn
>
>   package/base-files/files/lib/upgrade/nand.sh | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/package/base-files/files/lib/upgrade/nand.sh b/package/base-files/files/lib/upgrade/nand.sh
> index 99916a4e96fc..14856357989e 100644
> --- a/package/base-files/files/lib/upgrade/nand.sh
> +++ b/package/base-files/files/lib/upgrade/nand.sh
> @@ -320,7 +320,9 @@ nand_do_upgrade() {
>   nand_do_platform_check() {
>   	local board_name="$1"
>   	local tar_file="$2"
> -	local control_length=`(tar xf $tar_file sysupgrade-$board_name/CONTROL -O | wc -c) 2> /dev/null`
> +	local board_dir=$(tar tf $tar_file | grep -m 1 '^sysupgrade-.*/$')
> +	board_dir=${board_dir%/}
> +	local control_length=`(tar xf $tar_file ${board_dir}/CONTROL -O | wc -c) 2> /dev/null`
>   	local file_type="$(identify $2)"
>   
>   	[ "$control_length" = 0 -a "$file_type" != "ubi" -a "$file_type" != "ubifs" ] && {
>
Your timing as good as I've been wrestling with this as well
in context of providing ath79 support for SPI-NAND[1].

At least for me, the use case is the equivalent of

     nand_do_platform_check $(board_name) ${upgrade_file_name}

without jumping through hoops of translating the output of $(board_name)
to the expected tar-dir name for each and every instance of the call.


I don't know that there is a "better" solution, but what I have found:

* nand_do_platform_upgrade() is called by relatively few targets
   * ath79 (see [1])
   * pistachio
   * imx6
   * ar71xx

* I can see a desire to check for a *specific* tar-dir name,
   rather than just "any" tar-dir name (wrestled with this for a while)

* Only one board seems to prevent a first-comma-to-underscore approach,
   the `img,pistachio-marduk` uses `sysupgrade-img,pistachio-marduk`

   otherwise, I've got this on a development branch

+       local tar_dir_name="sysupgrade-$(echo "$board_name" | sed -e s/,/_/)"
+       local control_length=`(tar xf $tar_file ${tar_dir_name}/CONTROL -O | wc -c) 2> /dev/null`


It looks like the pistachio board could have its Makefile modified
to bring it's tar-dir name into the "standard" underscore form,
however I don't have one of these boards to test with,
nor do I know if the file-name change would impact users.

One set of changes I explored last night comes down to

-  IMAGE/sysupgrade.tar := sysupgrade-tar
+  IMAGE/sysupgrade.tar := sysupgrade-tar | append-metadata
  endef
  
-define Device/marduk
-  BOARD_NAME := img,pistachio-marduk
+define Device/img_pistachio-marduk
    DEVICE_DTS := img/pistachio_marduk
    BLOCKSIZE := 256KiB
    PAGESIZE := 4KiB
    DEVICE_TITLE := Creator Ci40
    DEVICE_PACKAGES := kmod-tpm-i2c-infineon
  endef
-
-TARGET_DEVICES += marduk
+TARGET_DEVICES += img_pistachio-marduk


commit b14444c010 (HEAD -> jmk-pistachio)
Author: Jeff Kletsky <git-commits@allycomm.com>
Date:   Sun May 19 20:28:12 2019 -0700

     pistachio: Update image/Makefile for tar root and metadata
     
     Prior to this patch, the img,pistachio-marduk was the only board that
     used the comma-delimited board name for the sysupgrade-tar directory
     rather than the underscore-delimited, DTS-compatible form.
     
     To allow for easier use of $(board_name) in upgrade scripting, this
     patch brings the sysupgrade-tar directory into the more canonical
     form. It also adds append-metadata to the sysupgrade-tar image.
     
     The board name at run time should be the same as before.
     
     However, the build results have a different name, changing from
     
         openwrt-pistachio-marduk-squashfs-sysupgrade.tar
     to
         openwrt-pistachio-img_pistachio-marduk-squashfs-sysupgrade.tar




[1] http://patchwork.ozlabs.org/project/openwrt/list/?series=107880


--------------B24278643CF9E83AE92DD137
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre>cc-ing primary Imgtec / pistachio / Creator Ci40 contributors identified
</pre>
    <div class="moz-cite-prefix">
      <pre>On 5/20/19 3:14 AM, Bjørn Mork wrote:</pre>
    </div>
    <blockquote type="cite"
      cite="mid:20190520101443.9192-1-bjorn@mork.no">
      <pre class="moz-quote-pre" wrap="">nand_do_platform_check assumes that the current board name is
used as-is in the tar file sysupgrade directory.  This fails
for any image supporting multiple device names, and it also
fails if the board_name contains a comma.

Signed-off-by: Bjørn Mork <a class="moz-txt-link-rfc2396E" href="mailto:bjorn@mork.no">&lt;bjorn@mork.no&gt;</a>
---
This is a local workaround I'va had lying around for a while.  Please
consider if it makes any sense at all, or if there are better ways
to solve the problem.

I don't have an actual upstreamed usecase, as this is an issue I've
met while trying to prepare for a never-finished ZyXEL WAP6805
support...



Bjørn

 package/base-files/files/lib/upgrade/nand.sh | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/package/base-files/files/lib/upgrade/nand.sh b/package/base-files/files/lib/upgrade/nand.sh
index 99916a4e96fc..14856357989e 100644
--- a/package/base-files/files/lib/upgrade/nand.sh
+++ b/package/base-files/files/lib/upgrade/nand.sh
@@ -320,7 +320,9 @@ nand_do_upgrade() {
 nand_do_platform_check() {
 	local board_name="$1"
 	local tar_file="$2"
-	local control_length=`(tar xf $tar_file sysupgrade-$board_name/CONTROL -O | wc -c) 2&gt; /dev/null`
+	local board_dir=$(tar tf $tar_file | grep -m 1 '^sysupgrade-.*/$')
+	board_dir=${board_dir%/}
+	local control_length=`(tar xf $tar_file ${board_dir}/CONTROL -O | wc -c) 2&gt; /dev/null`
 	local file_type="$(identify $2)"
 
 	[ "$control_length" = 0 -a "$file_type" != "ubi" -a "$file_type" != "ubifs" ] &amp;&amp; {
</pre>
      <pre>

</pre>
    </blockquote>
    <pre>
</pre>
    <pre>Your timing as good as I've been wrestling with this as well
in context of providing ath79 support for SPI-NAND[1].

At least for me, the use case is the equivalent of

    nand_do_platform_check $(board_name) ${upgrade_file_name}

without jumping through hoops of translating the output of $(board_name)
to the expected tar-dir name for each and every instance of the call.


I don't know that there is a "better" solution, but what I have found:

* nand_do_platform_upgrade() is called by relatively few targets
  * ath79 (see [1])
  * pistachio
  * imx6
  * ar71xx

* I can see a desire to check for a *specific* tar-dir name,
  rather than just "any" tar-dir name (wrestled with this for a while)

* Only one board seems to prevent a first-comma-to-underscore approach,
  the `img,pistachio-marduk` uses `sysupgrade-img,pistachio-marduk`

  otherwise, I've got this on a development branch

+       local tar_dir_name="sysupgrade-$(echo "$board_name" | sed -e s/,/_/)"
+       local control_length=`(tar xf $tar_file ${tar_dir_name}/CONTROL -O | wc -c) 2&gt; /dev/null`


It looks like the pistachio board could have its Makefile modified 
to bring it's tar-dir name into the "standard" underscore form,
however I don't have one of these boards to test with,
nor do I know if the file-name change would impact users.

One set of changes I explored last night comes down to

-  IMAGE/sysupgrade.tar := sysupgrade-tar
+  IMAGE/sysupgrade.tar := sysupgrade-tar | append-metadata
 endef
 
-define Device/marduk
-  BOARD_NAME := img,pistachio-marduk
+define Device/img_pistachio-marduk
   DEVICE_DTS := img/pistachio_marduk
   BLOCKSIZE := 256KiB
   PAGESIZE := 4KiB
   DEVICE_TITLE := Creator Ci40
   DEVICE_PACKAGES := kmod-tpm-i2c-infineon
 endef
-
-TARGET_DEVICES += marduk
+TARGET_DEVICES += img_pistachio-marduk


commit b14444c010 (HEAD -&gt; jmk-pistachio)
Author: Jeff Kletsky <a class="moz-txt-link-rfc2396E" href="mailto:git-commits@allycomm.com">&lt;git-commits@allycomm.com&gt;</a>
Date:   Sun May 19 20:28:12 2019 -0700

    pistachio: Update image/Makefile for tar root and metadata
    
    Prior to this patch, the img,pistachio-marduk was the only board that
    used the comma-delimited board name for the sysupgrade-tar directory
    rather than the underscore-delimited, DTS-compatible form.
    
    To allow for easier use of $(board_name) in upgrade scripting, this
    patch brings the sysupgrade-tar directory into the more canonical
    form. It also adds append-metadata to the sysupgrade-tar image.
    
    The board name at run time should be the same as before.
    
    However, the build results have a different name, changing from
    
        openwrt-pistachio-marduk-squashfs-sysupgrade.tar
    to
        openwrt-pistachio-img_pistachio-marduk-squashfs-sysupgrade.tar




[1] <a class="moz-txt-link-freetext" href="http://patchwork.ozlabs.org/project/openwrt/list/?series=107880">http://patchwork.ozlabs.org/project/openwrt/list/?series=107880</a>
</pre>
  </body>
</html>

--------------B24278643CF9E83AE92DD137--


--===============1276672801005447914==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1276672801005447914==--


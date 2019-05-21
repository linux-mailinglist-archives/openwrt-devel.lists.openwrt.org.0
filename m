Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC6A2466E
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 May 2019 05:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2791Sx2TP7HxCxB6Czq6C3CaMVBsuxkNnw1zr9/+w90=; b=ifQbeuoyUHoIN4MvCXuOc8cBW
	HnE/FymAoF9SzTTvM0a/0UF7qorbgKU2r2/dsMLApvGkGqNt7yXfyHMVbNEPI4v8KDB/8jv3BilzS
	8GAuH8DMxhiW8BOb5FHdo/21yrwj+eQR8jbTpDRQupj7Ry6iGJB+2edFiOcvj+cEY7LR3ZLw8MjO3
	Og5TV/Gw8wW3ZF7uYZtdlQ2WLSJhZQKOz5p5+aeTcyr16cpyHg5OOGHCIh7xaIwY5LhpokLmOxmcz
	+s/m11C0dsiecJhayeuUQfmqtKfFQpbe9u/r+gve7Y9Ub7FWFcs0Rk+1z7fOeeuO2DLba/hi/SPPu
	7XgIm49PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSvfz-0007YD-NT; Tue, 21 May 2019 03:42:55 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSvfs-0007Xt-Nz
 for openwrt-devel@lists.openwrt.org; Tue, 21 May 2019 03:42:50 +0000
Received: from ubuntu.pn.wagsky.com (c-69-181-42-248.hsd1.ca.comcast.net
 [69.181.42.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 18BB43BEA7;
 Mon, 20 May 2019 20:42:17 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>,
 openwrt-devel@lists.openwrt.org
References: <20190520101443.9192-1-bjorn@mork.no>
 <26fb4086-42b5-a102-0bc7-cf17972c2823@allycomm.com>
Message-ID: <a8c56e6b-bde5-1191-f980-eb5afafa9d1f@allycomm.com>
Date: Mon, 20 May 2019 20:42:16 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <26fb4086-42b5-a102-0bc7-cf17972c2823@allycomm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_204248_789192_DA966914 
X-CRM114-Status: GOOD (  24.27  )
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
Cc: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 Matti Laakso <matti.laakso@outlook.com>
Content-Type: multipart/mixed; boundary="===============7008944932459097565=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============7008944932459097565==
Content-Type: multipart/alternative;
 boundary="------------F01468FBDA1002F59401F5EA"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------F01468FBDA1002F59401F5EA
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

(imgtec.com addresses removed as mail to them bounces)

On 5/20/19 6:42 AM, Jeff Kletsky wrote:

> On 5/20/19 3:14 AM, Bjørn Mork wrote:
>> nand_do_platform_check assumes that the current board name is
>> used as-is in the tar file sysupgrade directory.  This fails
>> for any image supporting multiple device names, and it also
>> fails if the board_name contains a comma.
>>
>> Signed-off-by: Bjørn Mork<bjorn@mork.no>
>> ---
>> This is a local workaround I'va had lying around for a while.  Please
>> consider if it makes any sense at all, or if there are better ways
>> to solve the problem.
>>
>> I don't have an actual upstreamed usecase, as this is an issue I've
>> met while trying to prepare for a never-finished ZyXEL WAP6805
>> support...
>>
>>
>>
>> Bjørn
>>
>>   package/base-files/files/lib/upgrade/nand.sh | 4 +++-
>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/package/base-files/files/lib/upgrade/nand.sh b/package/base-files/files/lib/upgrade/nand.sh
>> index 99916a4e96fc..14856357989e 100644
>> --- a/package/base-files/files/lib/upgrade/nand.sh
>> +++ b/package/base-files/files/lib/upgrade/nand.sh
>> @@ -320,7 +320,9 @@ nand_do_upgrade() {
>>   nand_do_platform_check() {
>>   	local board_name="$1"
>>   	local tar_file="$2"
>> -	local control_length=`(tar xf $tar_file sysupgrade-$board_name/CONTROL -O | wc -c) 2> /dev/null`
>> +	local board_dir=$(tar tf $tar_file | grep -m 1 '^sysupgrade-.*/$')
>> +	board_dir=${board_dir%/}
>> +	local control_length=`(tar xf $tar_file ${board_dir}/CONTROL -O | wc -c) 2> /dev/null`
>>   	local file_type="$(identify $2)"
>>   
>>   	[ "$control_length" = 0 -a "$file_type" != "ubi" -a "$file_type" != "ubifs" ] && {
> Your timing as good as I've been wrestling with this as well
> in context of providing ath79 support for SPI-NAND[1].
>
> At least for me, the use case is the equivalent of
>
>      nand_do_platform_check $(board_name) ${upgrade_file_name}
>
> without jumping through hoops of translating the output of $(board_name)
> to the expected tar-dir name for each and every instance of the call.
>
>
> [...]
>
> * I can see a desire to check for a *specific* tar-dir name,
>    rather than just "any" tar-dir name (wrestled with this for a while)
>
> * Only one board seems to prevent a first-comma-to-underscore approach,
>    the `img,pistachio-marduk` uses `sysupgrade-img,pistachio-marduk`
>
>   [...]

Having spent quite a bit of time today thinking about the impact of
board-name changes, I can see use cases where the running system
doesn't know a priori what the range of acceptable tar-dir values are.

Take the case where `mfgr,board-name` gets a new, compatible variant,
`mfgr,board-name-special-purpose`. If you're running `mfgr,board-name`,
a strict check for `mfgr_board-name` would fail, even though the
sysupgrade-tar was applicable. This kind of board-compatibility check
should arguably be done with image metadata, either or both appended
or in the CONTROL section.

As such, I would welcome this change, as proposed by Bjørn.

I would suggest an update to the comment to reflect the change as
`has to include "sysupgrade-BOARD" directory` is no longer correct.




Jeff
    


--------------F01468FBDA1002F59401F5EA
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre>(imgtec.com addresses removed as mail to them bounces)
</pre>
    <div class="moz-cite-prefix">
      <pre>On 5/20/19 6:42 AM, Jeff Kletsky wrote:
</pre>
    </div>
    <blockquote type="cite"
      cite="mid:26fb4086-42b5-a102-0bc7-cf17972c2823@allycomm.com">
      <div class="moz-cite-prefix">
        <pre>On 5/20/19 3:14 AM, Bjørn Mork wrote:    </pre>
      </div>
      <blockquote type="cite"
        cite="mid:20190520101443.9192-1-bjorn@mork.no">
        <pre class="moz-quote-pre" wrap="">nand_do_platform_check assumes that the current board name is
used as-is in the tar file sysupgrade directory.  This fails
for any image supporting multiple device names, and it also
fails if the board_name contains a comma.

Signed-off-by: Bjørn Mork <a class="moz-txt-link-rfc2396E" href="mailto:bjorn@mork.no" moz-do-not-send="true">&lt;bjorn@mork.no&gt;</a>
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
      <pre>Your timing as good as I've been wrestling with this as well
in context of providing ath79 support for SPI-NAND[1].

At least for me, the use case is the equivalent of

    nand_do_platform_check $(board_name) ${upgrade_file_name}

without jumping through hoops of translating the output of $(board_name)
to the expected tar-dir name for each and every instance of the call.


[...]

* I can see a desire to check for a *specific* tar-dir name,
  rather than just "any" tar-dir name (wrestled with this for a while)

* Only one board seems to prevent a first-comma-to-underscore approach,
  the `img,pistachio-marduk` uses `sysupgrade-img,pistachio-marduk`

 [...]
</pre>
    </blockquote>
    <pre>
Having spent quite a bit of time today thinking about the impact of
board-name changes, I can see use cases where the running system
doesn't know a priori what the range of acceptable tar-dir values are.

Take the case where `mfgr,board-name` gets a new, compatible variant,
`mfgr,board-name-special-purpose`. If you're running `mfgr,board-name`,
a strict check for `mfgr_board-name` would fail, even though the
sysupgrade-tar was applicable. This kind of board-compatibility check
should arguably be done with image metadata, either or both appended
or in the CONTROL section.

As such, I would welcome this change, as proposed by Bjørn.

I would suggest an update to the comment to reflect the change as
`has to include "sysupgrade-BOARD" directory` is no longer correct.




Jeff
   </pre>
  </body>
</html>

--------------F01468FBDA1002F59401F5EA--


--===============7008944932459097565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7008944932459097565==--


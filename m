Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 182994757C
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Jun 2019 17:21:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/qJVedVKnlXy0aElozZQih8o3OJTZVwKQPqHygQAj7Q=; b=KY0YONXBU8QtylFmWrBJGgMgt
	AXGMvQb7vg6pckmlLuTMKDsw4cyrRneU462DZVtKYu7LFhXvJLfkJIy4BbPkVLbHqEfbdj9LvEwXc
	pookCvz2TtyNREL3U0K5s9MlK6bTf0y+tRAyr0Hm1ZmqBl5J2v+dA9v1DA3XJq2yG3pX9tROjYM6v
	lLR6m+eaPiBrn9iIdLPKp68I/JA1IcN8KLKXAWocqJmDiu53PJyEbwSLqOMOB1jLGTOA2XDlp2mZW
	vZThYbl1VQhoWI6miKiXqcS5YQCRPXkYXUT9UxxTcAZl6ao/28dMTXDuiWMRuGuAw70R6V3ZVUCCz
	3LNafEPuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcWxr-0004UU-N0; Sun, 16 Jun 2019 15:21:03 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcWxg-0004U2-QE
 for openwrt-devel@lists.openwrt.org; Sun, 16 Jun 2019 15:20:54 +0000
Received: from ubuntu.pn.wagsky.com (c-69-181-42-248.hsd1.ca.comcast.net
 [69.181.42.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 8D04C25E94;
 Sun, 16 Jun 2019 08:20:50 -0700 (PDT)
To: Christian Lamparter <chunkeey@gmail.com>
References: <20190615214056.11729-1-lede@allycomm.com>
 <20190615214056.11729-2-lede@allycomm.com> <7807967.26YyYKSkP6@debian64>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <b41f1f1e-16a3-1aff-e8ef-b53f05837f8c@allycomm.com>
Date: Sun, 16 Jun 2019 08:20:50 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <7807967.26YyYKSkP6@debian64>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_082052_855991_60CA82D0 
X-CRM114-Status: GOOD (  12.92  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/1] ipq40xx: Linksys: sysupgrade:
 Ensure OEM volumes are removed
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============8506073561638547469=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============8506073561638547469==
Content-Type: multipart/alternative;
 boundary="------------223095FDFB005DE7DA9EAD46"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------223095FDFB005DE7DA9EAD46
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/16/19 4:49 AM, Christian Lamparter wrote:

> On Saturday, June 15, 2019 11:40:56 PM CEST Jeff Kletsky wrote:
>> From: Jeff Kletsky <git-commits@allycomm.com>
>>
>> When OEM volumes are present in the [alt_]firmware partition,
>> sysupgrade will write a new kernel, but will fail to write
>> the root file system. The next boot will hang indefinitely
>>
>>      Waiting for root device /dev/ubiblock0_0...
>>
>> Modified ipq40xx/base-files/lib/upgrade/linksys.sh
>> to remove both `squashfs` and `ubifs` if found
>> on the target firmware partition's UBI device.
>>
>> Run-tested-on: Linksys EA8300
>>
>> Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
> Can you check if this is still working? Or if I broke it
> when I was implementing the shellcheck changes?
>
> https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=003c63f7b1102702fb4a0580683b21ded1ee1a3e
>
> Cheers,
> Christian
>
> [...]

With the caveat that I don't know how to exercise the
[ "$magic_long" = "27051956" ] branch of the code[1],
your referenced commit from staging/chunkeey is able to
sysupgrade my ipq4019-based EA8300 both over OpenWrt
as well as over OEM. I have also spot-checked the
"missing boot_part" path.

Thanks for the quick review of the changes as well as
the clean-up of existing code.

Jeff


---

[1] EA8300 "factory" images don't match the "other" branch

$ hexdump -C -n 128 ~/devel/ea8300/FW_EA8300_1.1.4.191539_prod.img
00000000  d0 0d fe ed 00 27 72 7c  00 00 00 38 00 27 6e a8  |.....'r|...8.'n.|
00000010  00 00 00 28 00 00 00 11  00 00 00 10 00 00 00 00  |...(............|
00000020  00 00 00 6c 00 27 6e 70  00 00 00 00 00 00 00 00  |...l.'np........|
00000030  00 00 00 00 00 00 00 00  00 00 00 01 00 00 00 00  |................|
00000040  00 00 00 03 00 00 00 04  00 00 00 5c 5b d0 bf b0  |...........\[...|
00000050  00 00 00 03 00 00 00 27  00 00 00 00 41 52 4d 20  |.......'....ARM |
00000060  4c 69 6e 6b 73 79 73 20  46 49 54 20 28 46 6c 61  |Linksys FIT (Fla|
00000070  74 74 65 6e 65 64 20 49  6d 61 67 65 20 54 72 65  |ttened Image Tre|
00000080


--------------223095FDFB005DE7DA9EAD46
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre><tt>On 6/16/19 4:49 AM, Christian Lamparter wrote:</tt><tt>
</tt></pre>
    <blockquote type="cite" cite="mid:7807967.26YyYKSkP6@debian64">
      <pre class="moz-quote-pre" wrap="">On Saturday, June 15, 2019 11:40:56 PM CEST Jeff Kletsky wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">From: Jeff Kletsky <a class="moz-txt-link-rfc2396E" href="mailto:git-commits@allycomm.com">&lt;git-commits@allycomm.com&gt;</a>

When OEM volumes are present in the [alt_]firmware partition,
sysupgrade will write a new kernel, but will fail to write
the root file system. The next boot will hang indefinitely

    Waiting for root device /dev/ubiblock0_0...

Modified ipq40xx/base-files/lib/upgrade/linksys.sh
to remove both `squashfs` and `ubifs` if found
on the target firmware partition's UBI device.

Run-tested-on: Linksys EA8300

Signed-off-by: Jeff Kletsky <a class="moz-txt-link-rfc2396E" href="mailto:git-commits@allycomm.com">&lt;git-commits@allycomm.com&gt;</a>
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Can you check if this is still working? Or if I broke it
when I was implementing the shellcheck changes?

<a class="moz-txt-link-freetext" href="https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=003c63f7b1102702fb4a0580683b21ded1ee1a3e">https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=003c63f7b1102702fb4a0580683b21ded1ee1a3e</a>

Cheers,
Christian

[...]</pre>
    </blockquote>
    <pre>
With the caveat that I don't know how to exercise the 
[ "$magic_long" = "27051956" ] branch of the code[1], 
your referenced commit from staging/chunkeey is able to 
sysupgrade my ipq4019-based EA8300 both over OpenWrt
as well as over OEM. I have also spot-checked the 
"missing boot_part" path.

Thanks for the quick review of the changes as well as 
the clean-up of existing code.

Jeff


---

[1] EA8300 "factory" images don't match the "other" branch

$ hexdump -C -n 128 ~/devel/ea8300/FW_EA8300_1.1.4.191539_prod.img 
00000000  d0 0d fe ed 00 27 72 7c  00 00 00 38 00 27 6e a8  |.....'r|...8.'n.|
00000010  00 00 00 28 00 00 00 11  00 00 00 10 00 00 00 00  |...(............|
00000020  00 00 00 6c 00 27 6e 70  00 00 00 00 00 00 00 00  |...l.'np........|
00000030  00 00 00 00 00 00 00 00  00 00 00 01 00 00 00 00  |................|
00000040  00 00 00 03 00 00 00 04  00 00 00 5c 5b d0 bf b0  |...........\[...|
00000050  00 00 00 03 00 00 00 27  00 00 00 00 41 52 4d 20  |.......'....ARM |
00000060  4c 69 6e 6b 73 79 73 20  46 49 54 20 28 46 6c 61  |Linksys FIT (Fla|
00000070  74 74 65 6e 65 64 20 49  6d 61 67 65 20 54 72 65  |ttened Image Tre|
00000080
</pre>
  </body>
</html>

--------------223095FDFB005DE7DA9EAD46--


--===============8506073561638547469==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8506073561638547469==--


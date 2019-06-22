Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6582E4F85E
	for <lists+openwrt-devel@lfdr.de>; Sun, 23 Jun 2019 00:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:Message-ID:From:To:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZPI3R1UbhrAl4eiVVo5Edw3hXOZY2eJTM2edVNuns6Q=; b=PCb
	uxzwuZLonEwicKDH3QvU6VGYcVB5nZyWYrc8KOEpNzX0tNRYuzFu5Fh5LE88rrQ+0/vmVsQjw2IuE
	wT8NrNAklT+XJbf0/XWoX5op2B4BcV50/zLdMzWS6X+Zkc6Sm3Xk3QkwcqwOsop9hcvdcKMfmA3kq
	fSGMWDYUJpiv+AEMw77PDi9Nj1TcE5JlUGXfhstsQ9v42vriaIg1Ykcz3uNRLtVJ7ps65Z5Tpny+U
	N7FKFgimJArjpxfQK1UvbtGxT5CTyUEMud/P0bVKxOwfUlcothJbNT1YZs6WecMFX1x1bOZiMq8lo
	G6l2yBmTmfSDCv3LjJJhI/FjZT1YApA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heo4k-0000bf-JA; Sat, 22 Jun 2019 22:01:34 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heo4Q-0000aj-Sm
 for openwrt-devel@lists.openwrt.org; Sat, 22 Jun 2019 22:01:16 +0000
Received: from ubuntu.pn.wagsky.com (c-69-181-42-248.hsd1.ca.comcast.net
 [69.181.42.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 59124205CD
 for <openwrt-devel@lists.openwrt.org>; Sat, 22 Jun 2019 15:00:42 -0700 (PDT)
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <c992e43c-c0c6-9d53-1377-c3d84f650127@allycomm.com>
Date: Sat, 22 Jun 2019 15:00:42 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_150114_939128_9D05E668 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: [OpenWrt-Devel] NOHZ: local_softirq_pending 08 -- IPQ4019 on master
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
Content-Type: multipart/mixed; boundary="===============5010714082921471888=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============5010714082921471888==
Content-Type: multipart/alternative;
 boundary="------------46B739CCC253E7233E82D5C3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------46B739CCC253E7233E82D5C3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Just flashed a build off `master` and am seeing "new" error messages
starting after the network has started, a couple times,
then every 20 seconds, seemingly like clockwork.

root@test:/# dmesg | fgrep NOHZ
[   36.955401] NOHZ: local_softirq_pending 08
[   57.439420] NOHZ: local_softirq_pending 08
[   98.397107] NOHZ: local_softirq_pending 08
[  118.881226] NOHZ: local_softirq_pending 08
[  139.356879] NOHZ: local_softirq_pending 08
[  159.840218] NOHZ: local_softirq_pending 08
[  180.315962] NOHZ: local_softirq_pending 08
[  200.799979] NOHZ: local_softirq_pending 08
[  221.275747] NOHZ: local_softirq_pending 08
[  241.756644] NOHZ: local_softirq_pending 08

Still looking into it, but curious if anyone else is seeing this.

Linux 4.19.53

commit 629e6538a1 (openwrt/master, openwrt/HEAD, master)
Author: Christian Lamparter <redacted>
Date:   Sat Jun 22 12:23:10 2019 +0200


Similar behavior on the alternate firmware on the device

commit eaad2211db
Author: Jo-Philipp Wich <redacted>
Date:   Fri Jun 21 17:41:28 2019 +0200

root@test:/# dmesg | fgrep NOHZ
[   56.800024] NOHZ: local_softirq_pending 08
[   77.281594] NOHZ: local_softirq_pending 08
[   97.763395] NOHZ: local_softirq_pending 08
[  138.718065] NOHZ: local_softirq_pending 08
[  138.720722] NOHZ: local_softirq_pending 08
[  159.197431] NOHZ: local_softirq_pending 08
[  200.157115] NOHZ: local_softirq_pending 08
[  220.636004] NOHZ: local_softirq_pending 08
[  241.116778] NOHZ: local_softirq_pending 08
[  241.119413] NOHZ: local_softirq_pending 08


Some mention of `NOHZ: local_softirq_pending 08` back in 2012
https://groups.google.com/forum/#!topic/linux.kernel/YeH1CTNT9vU

Other mention at
https://askubuntu.com/questions/878030/occasional-dmesg-log-nohz-local-softirq-pending-08

> Add nohz=off to the kernel parameters during boot to disable it.
> 
>> This option causes RCU to attempt to accelerate grace periods
>> in order to allow CPUs to enter dynticks-idle state more quickly.
>> On the other hand, this option increases the overhead
>> of the dynticks-idle checking, particularly on systems
>> with large numbers of CPUs.

I'm not sure I'd consider an IPQ4019 to have "large numbers of CPUs"
but I figured I'd lay out what I have found so far.


Jeff


--------------46B739CCC253E7233E82D5C3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre>Just flashed a build off `master` and am seeing "new" error messages
starting after the network has started, a couple times, 
then every 20 seconds, seemingly like clockwork.

root@test:/# dmesg | fgrep NOHZ
[   36.955401] NOHZ: local_softirq_pending 08
[   57.439420] NOHZ: local_softirq_pending 08
[   98.397107] NOHZ: local_softirq_pending 08
[  118.881226] NOHZ: local_softirq_pending 08
[  139.356879] NOHZ: local_softirq_pending 08
[  159.840218] NOHZ: local_softirq_pending 08
[  180.315962] NOHZ: local_softirq_pending 08
[  200.799979] NOHZ: local_softirq_pending 08
[  221.275747] NOHZ: local_softirq_pending 08
[  241.756644] NOHZ: local_softirq_pending 08

Still looking into it, but curious if anyone else is seeing this.

Linux 4.19.53

commit 629e6538a1 (openwrt/master, openwrt/HEAD, master)
Author: Christian Lamparter &lt;redacted&gt;
Date:   Sat Jun 22 12:23:10 2019 +0200


Similar behavior on the alternate firmware on the device

commit eaad2211db
Author: Jo-Philipp Wich &lt;redacted&gt;
Date:   Fri Jun 21 17:41:28 2019 +0200

root@test:/# dmesg | fgrep NOHZ
[   56.800024] NOHZ: local_softirq_pending 08
[   77.281594] NOHZ: local_softirq_pending 08
[   97.763395] NOHZ: local_softirq_pending 08
[  138.718065] NOHZ: local_softirq_pending 08
[  138.720722] NOHZ: local_softirq_pending 08
[  159.197431] NOHZ: local_softirq_pending 08
[  200.157115] NOHZ: local_softirq_pending 08
[  220.636004] NOHZ: local_softirq_pending 08
[  241.116778] NOHZ: local_softirq_pending 08
[  241.119413] NOHZ: local_softirq_pending 08


Some mention of `NOHZ: local_softirq_pending 08` back in 2012
<a class="moz-txt-link-freetext" href="https://groups.google.com/forum/#!topic/linux.kernel/YeH1CTNT9vU">https://groups.google.com/forum/#!topic/linux.kernel/YeH1CTNT9vU</a>

Other mention at 
<a class="moz-txt-link-freetext" href="https://askubuntu.com/questions/878030/occasional-dmesg-log-nohz-local-softirq-pending-08">https://askubuntu.com/questions/878030/occasional-dmesg-log-nohz-local-softirq-pending-08</a>

&gt; Add nohz=off to the kernel parameters during boot to disable it.
&gt; 
&gt;&gt; This option causes RCU to attempt to accelerate grace periods
&gt;&gt; in order to allow CPUs to enter dynticks-idle state more quickly.
&gt;&gt; On the other hand, this option increases the overhead
&gt;&gt; of the dynticks-idle checking, particularly on systems
&gt;&gt; with large numbers of CPUs.

I'm not sure I'd consider an IPQ4019 to have "large numbers of CPUs"
but I figured I'd lay out what I have found so far.


Jeff

</pre>
  </body>
</html>

--------------46B739CCC253E7233E82D5C3--


--===============5010714082921471888==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5010714082921471888==--


Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDC45DDA2
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jul 2019 07:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:Message-ID:From:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=m6lhLj1xvR57+FJe3B2eUHAVpXsCB6R+Y38GcXOyRro=; b=R7A
	l0Om8lfv30orG5fL2mZDy2UFhQGTPPok9sxrnibeIuXYn9m9fEngFrluZLFA6GFo3uzRJ6eJBK9qe
	9cg2bY5sElAvlHxhbSlKtOynONBIuCSUbo5Bajjfannb1pGDXGzNdlun1WcNhgeSu0pDAhx8YAbvK
	hGIdEXVyKrdSoYUgvy97bSDjJ4PigAdiBHy+2PuwgIYYtFe1k4HjqVd6N7IP2NSUIeLRkJZR7EOEK
	IBvY3prQ20L1nWUNq3ewnDcmZ3a443XMK2rEiQzZ8mxFma621HHkRB7KsGX1Q7i/fAruX+1TWMMhr
	EwJmKzoiBuWULNrNvi4KxHVMVPh1uTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiXNQ-0005iR-OM; Wed, 03 Jul 2019 05:00:17 +0000
Received: from welho-filter2.welho.com ([83.102.41.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiXN7-0005Yw-6f
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jul 2019 05:00:00 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter2.welho.com (Postfix) with ESMTP id 28F74C3F2A;
 Wed,  3 Jul 2019 07:59:46 +0300 (EEST)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp1.welho.com ([IPv6:::ffff:83.102.41.84])
 by localhost (welho-filter2.welho.com [::ffff:83.102.41.24]) (amavisd-new,
 port 10024)
 with ESMTP id pHog_tF1sGhs; Wed,  3 Jul 2019 07:59:45 +0300 (EEST)
Received: from [192.168.1.180] (87-92-28-124.bb.dnainternet.fi [87.92.28.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
 bits)) (No client certificate requested)
 by welho-smtp1.welho.com (Postfix) with ESMTPS id 27C237A;
 Wed,  3 Jul 2019 07:59:42 +0300 (EEST)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <4d8977dc-67df-f5cf-4a5f-ae1350a09aa0@iki.fi>
Date: Wed, 3 Jul 2019 07:59:42 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_215957_581395_3D4953AE 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.24 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: [OpenWrt-Devel] Lots of core packages fail in phase2(?) buildbot -
 maybe due to lua changes?
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
Cc: rafal@milecki.pl
Content-Type: multipart/mixed; boundary="===============4001785294864014572=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============4001785294864014572==
Content-Type: multipart/alternative;
 boundary="------------3FCA1C0C2CE10171C3F751E2"

This is a multi-part message in MIME format.
--------------3FCA1C0C2CE10171C3F751E2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Based on forum discussion at 
https://forum.openwrt.org/t/errors-when-using-image-builder-for-ipq806x/39992

I looked at the packages buildbot faillogs for OpenWrt master and the package 
download directories, and noticed that quite a lot of the core OpenWrt 
packages fail to build in the buildbot at the moment, like ubox, ubus, 
firewall, uci, netifd... and they are also missing from the snapshot download 
directories.

Example failllogs:

http://downloads.openwrt.org/snapshots/faillogs/arm_cortex-a15_neon-vfpv4/base/

http://downloads.openwrt.org/snapshots/faillogs/mips_24kc/base/


Many of the error are CMake errors referrefing into ubox related stuff, like:

UBUS:

CMake Error: The following variables are used in this project, but they are set to NOTFOUND.
Please set them or make sure they are set and tested correctly in the CMake files:
blob_library
     linked by target "cli" in directory /builder/mips_24kc/build/sdk/build_dir/target-mips_24kc_musl/ubus-2018-10-06-221ce7e7
     linked by target "ubusd" in directory /builder/mips_24kc/build/sdk/build_dir/target-mips_24kc_musl/ubus-2018-10-06-221ce7e7
     linked by target "server" in directory /builder/mips_24kc/build/sdk/build_dir/target-mips_24kc_musl/ubus-2018-10-06-221ce7e7/examples
ubox_include_dir


Netifd has a somewhat clear reason for failure:

In file included from /builder/mips_24kc/build/sdk/build_dir/target-mips_24kc_musl/netifd-2019-06-15-9932ed02/main.c:22:0:
/builder/mips_24kc/build/sdk/build_dir/target-mips_24kc_musl/netifd-2019-06-15-9932ed02/netifd.h:23:10: fatal error: libubox/uloop.h: No such file or directory
  #include <libubox/uloop.h>
           ^~~~~~~~~~~~~~~~~
compilation terminated.


The single-package errors are non-fatal in the phase2 buildbot, so these have 
not surfaced earlier. And this apparently does not impact the phase1 
buildbot, which apaprently seems to compile the packages ok and include them 
in the firmware images.

Based on that I am unsure if this is about phase2 buildbot trying to build 
packages that it shouldn't, or something else.

I can't see anything obvious in the commit logs in the past few days that 
could have caused this. One possibiility is still the scripts/config change 
two weeks ago, which affected dependency calculations.

Hmmm.

While writing this, I noticed that while other packages seem to fail mainly 
for ubox related reasons, libubox itself seems to fail due to lua related 
stuff. Maybe the lua / lua5.1 rename and version inclusion in the packaged 
file names is causing havoc. cc'ing rmilecki

http://downloads.openwrt.org/snapshots/faillogs/arm_cortex-a15_neon-vfpv4/base/libubox/compile.txt

Reference to commit:

https://git.openwrt.org/?p=openwrt/openwrt.git;a=commitdiff;h=fe59b46ca7e0716e030a5d7cb0da9b4b6a79a8f4



--------------3FCA1C0C2CE10171C3F751E2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Based on forum discussion at
<a class="moz-txt-link-freetext" href="https://forum.openwrt.org/t/errors-when-using-image-builder-for-ipq806x/39992">https://forum.openwrt.org/t/errors-when-using-image-builder-for-ipq806x/39992</a></p>
    <p>I looked at the packages buildbot faillogs for OpenWrt master and
      the package download directories, and noticed that quite a lot of
      the core OpenWrt packages fail to build in the buildbot at the
      moment, like ubox, ubus, firewall, uci, netifd... and they are
      also missing from the snapshot download directories.</p>
    <p>Example failllogs:</p>
    <p><a class="moz-txt-link-freetext" href="http://downloads.openwrt.org/snapshots/faillogs/arm_cortex-a15_neon-vfpv4/base/">http://downloads.openwrt.org/snapshots/faillogs/arm_cortex-a15_neon-vfpv4/base/</a></p>
    <p><a class="moz-txt-link-freetext" href="http://downloads.openwrt.org/snapshots/faillogs/mips_24kc/base/">http://downloads.openwrt.org/snapshots/faillogs/mips_24kc/base/</a></p>
    <br>
    <p>Many of the error are CMake errors referrefing into ubox related
      stuff, like:<br>
    </p>
    <pre>UBUS:

CMake Error: The following variables are used in this project, but they are set to NOTFOUND.
Please set them or make sure they are set and tested correctly in the CMake files:
blob_library
    linked by target "cli" in directory /builder/mips_24kc/build/sdk/build_dir/target-mips_24kc_musl/ubus-2018-10-06-221ce7e7
    linked by target "ubusd" in directory /builder/mips_24kc/build/sdk/build_dir/target-mips_24kc_musl/ubus-2018-10-06-221ce7e7
    linked by target "server" in directory /builder/mips_24kc/build/sdk/build_dir/target-mips_24kc_musl/ubus-2018-10-06-221ce7e7/examples
ubox_include_dir
</pre>
    <p><br>
    </p>
    <p>Netifd has a somewhat clear reason for failure:</p>
    <pre>In file included from /builder/mips_24kc/build/sdk/build_dir/target-mips_24kc_musl/netifd-2019-06-15-9932ed02/main.c:22:0:
/builder/mips_24kc/build/sdk/build_dir/target-mips_24kc_musl/netifd-2019-06-15-9932ed02/netifd.h:23:10: fatal error: libubox/uloop.h: No such file or directory
 #include &lt;libubox/uloop.h&gt;
          ^~~~~~~~~~~~~~~~~
compilation terminated.
</pre>
    <p><br>
    </p>
    <p>The single-package errors are non-fatal in the phase2 buildbot,
      so these have not surfaced earlier. And this apparently does not
      impact the phase1 buildbot, which apaprently seems to compile the
      packages ok and include them in the firmware images.</p>
    <p>Based on that I am unsure if this is about phase2 buildbot trying
      to build packages that it shouldn't, or something else.</p>
    <p>I can't see anything obvious in the commit logs in the past few
      days that could have caused this. One possibiility is still the
      scripts/config change two weeks ago, which affected dependency
      calculations.</p>
    <p>Hmmm. <br>
    </p>
    <p>While writing this, I noticed that while other packages seem to
      fail mainly for ubox related reasons, libubox itself seems to fail
      due to lua related stuff. Maybe the lua / lua5.1 rename and
      version inclusion in the packaged file names is causing havoc.
      cc'ing rmilecki<br>
    </p>
    <p>
<a class="moz-txt-link-freetext" href="http://downloads.openwrt.org/snapshots/faillogs/arm_cortex-a15_neon-vfpv4/base/libubox/compile.txt">http://downloads.openwrt.org/snapshots/faillogs/arm_cortex-a15_neon-vfpv4/base/libubox/compile.txt</a></p>
    <p>Reference to commit:</p>
    <p><a class="moz-txt-link-freetext" href="https://git.openwrt.org/?p=openwrt/openwrt.git;a=commitdiff;h=fe59b46ca7e0716e030a5d7cb0da9b4b6a79a8f4">https://git.openwrt.org/?p=openwrt/openwrt.git;a=commitdiff;h=fe59b46ca7e0716e030a5d7cb0da9b4b6a79a8f4</a></p>
    <p><br>
    </p>
  </body>
</html>

--------------3FCA1C0C2CE10171C3F751E2--


--===============4001785294864014572==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4001785294864014572==--


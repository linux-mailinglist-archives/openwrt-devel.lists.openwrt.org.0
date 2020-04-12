Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A65B61A5F35
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Apr 2020 17:37:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=S5TMAY897hb+ni1U7bR0TzmN1ayZGHxOHJ3957QB6mY=; b=JOwvtD1dgmQ5O4
	t7myqYD/166YblC1GMEUj8TzBf1Fh/4q8LleO4xEYXuV51zSnFD2dIpmkYc6vqyeo2z3HImib7DhQ
	GNA6gUerIDVfTdXNMiVafsRkZ3Lfg09KJ5/RKF5c4wbdJIRxJSATmqKh/k6twmNuEa1uG1wVxhcyz
	Nx8Jqe0aipSDnwNrLJcxNUOi32rnx+wMZO0Me0EmBrnzzqQOmtfrJNIodwTGU422XILvg1Fr0cnBn
	sFsp+WIHCG7JwtcYrjaLnSFemP6x5kWihDFVErFOtvbqbgd3xo4yRjUZP4lded9g35OZcAZ6OzD2Y
	t2NPIs7QxMRcCbcIwUwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNefp-0005AD-JY; Sun, 12 Apr 2020 15:37:29 +0000
To: openwrt-devel@lists.openwrt.org
Date: Sun, 12 Apr 2020 17:37:13 +0200
References: <bc270db4-005d-36b9-c726-c044ef719624.ref@yahoo.com>
MIME-Version: 1.0
Message-ID: <mailman.2840.1586705844.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: "R. Diez via openwrt-devel" <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: "R. Diez" <rdiezmail-openwrt@yahoo.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH] Do not hard-code IS_TTY in script
 scripts/feeds
Content-Type: multipart/mixed; boundary="===============1691314579446956946=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============1691314579446956946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1691314579446956946==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from sonic304-22.consmr.mail.ir2.yahoo.com ([77.238.179.147])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNefi-00058c-BM
	for openwrt-devel@lists.openwrt.org; Sun, 12 Apr 2020 15:37:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1586705837; bh=lExDUKUCo8D8yTfRjnvwQ+AKH907czOIB9adOrNi4b4=; h=From:Subject:To:Date:References:From:Subject; b=f9uB4cmhFpCH2SxLimKhpxdNmaSAqfa4DWIax3HTgDzyW7lJkFB9PdbUr5s3GcDG0vu7V9Q3hRhh8I0xHN/aELB0GI5O9rhZKar3DYJeyMWMCHz1Wt7Vi/5TWkzKjENDiaIUyVwSTMSlwI9SSjEugQHgkyPKBETROgUBlAN5bCpu2BCZ6gHPDB3mN3yv67DvAqQx7iyBwg1a/secE1U4wrQcEvEFu/LtJ/knYU6XVqjDCJjxqi+RY9xTMZXmTH/dlA9S0C93S6kZagJzY6x4g/2deQ37zOco9h4sgchCtfTejEXWRkHNfJ0goMaDM5uCPqssJwBVTgMgbylViRHntg==
X-YMail-OSG: iOU5CJMVM1lCnS4ml9cB4K8FjyKL1hvHeYJF1OEqSBREDrqxI9TxxzFJNWuhsjM
 gEHxyKeIxgK2x75csnZnhymygu9Ls4EO8PTefsq99stBHAH7vGSWWCTfmuvTEoKw5dryL4Q7zjkE
 OtIRIA_JfajHWyETObZUAAbVpsx.RofTqhDUgkujEjifKBuEkUiZX4iARwZQTfDwnHx9vnwBovm8
 Mjhw4BuZxp2m.NFU80fpurJ7ZX7yHbg67Lpm69AFcbsWFH7WNRmI1LyF69TBulxM0JeRV2lA1RLU
 fOvY60LhWMLo77ptZrmiJeuwUij0PU4zPadUtlzdTE0XDzMi5I_Ex1uRvYTQFSS0AqNdcrddtxXj
 D_q4fHpHNcTF7YezjouYNjsseOr7c.gVRRVzIsmNxY5ou9Fx8WDngJZPjkGF89LfHMbBayHzdNj4
 c9VGQHgws1kJPB5OivCAPCxug4Jjt8OSun4AqYvCE3QIfM2vHeqDL3TlQPixNnVDk6n70tlXWkYt
 NLxhQ9DLaX_2u4Xsw.hvZZ8dOWiX6CYRLDUU2j2xmeGQTmIDYfJU46XyFY9anP8cmqnxYUVoM8kR
 PUMzHslBuVYt7dDoSWKaihSkIkcHdNIfK5z1WgooBezbWT09zOzyLFfDlGIMbUKK9A26OxN45zrv
 k1AVr4iA1ietc9rzVv0JTeG.J3Eld_0VWfcS4_h.Ncrz.X_AzmQwBmtzsqUirEsquFYOWivQf1uV
 f9lKrxVdLIJcpKTkNMPb3K8fvA0MTWF5rLcw3rZeK0i5lDpflSNptyY8lRcAtJjkqbSuPgH9hv0j
 1QHXzNQ_ENzJac3eIo7cvegFG9.wNzQeVPCozxEIQ1EMx1AsgNSr8MyHxfwj7fAzJ_rJE_ODTeDz
 jTByFWWj8zBVv8FXlrhwOo2e7HkWdk5yIEjqv3XLB0OOwX._bYxkNXpaz5zyhWCBmdsnVspQd4mw
 ySlQ6j1viIlxhS5WLTiLCx2XGaDYuRHFZB.37yJipBNIyu9of76pZzRTx_t3hXKNOI4WSgodJkC4
 zyK9DwycHbd.BOQ0oIOGI4Hkstc6FB6DdBCovAx3EqvUsnZ1WiE05V3lDv68VOwSEdFH9LZC9riD
 NLgY5tmDUYlSY4.SqeUgFib33rvwqgfdOLDJgQ0bQ8DIk11Kql1PaqR03fftLEmLXXSTZEtxlD0Z
 8eo_8y7tktxcW5QC2qF3iVtGvBkuYQH7px5vr62.SnTeGpDf59nN7iFfuRpu2ZSnTBnIOg.IDAXT
 cZdDaggFcQuytQU9lyi0JDu3kHhk0FT5AtN.WUvBTO9hiv1zarfXWveA8TMneYpkbolp5YIm_TL1
 pzYPkB1VI_qRAi2GZgdiDvVW1rjEJOcOCOi5vLpSN25Bf.R.AGXQy1CBPCk3JWcx.B2H6tauIf3_
 msUEIcxslkk.15MpovorXt1jXT3s.Zcr_UV7UDCiljvaCPQ--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic304.consmr.mail.ir2.yahoo.com with HTTP; Sun, 12 Apr 2020 15:37:17 +0000
Received: by smtp410.mail.ir2.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 80979282d3b3caffa540cb9e07aa0bb7;
          Sun, 12 Apr 2020 15:37:13 +0000 (UTC)
From: "R. Diez" <rdiezmail-openwrt@yahoo.com>
Subject: [PATCH] Do not hard-code IS_TTY in script scripts/feeds
To: openwrt-devel@lists.openwrt.org
Message-ID: <bc270db4-005d-36b9-c726-c044ef719624@yahoo.com>
Date: Sun, 12 Apr 2020 17:37:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------87403878C1759DB0B9998779"
Content-Language: en-GB
References: <bc270db4-005d-36b9-c726-c044ef719624.ref@yahoo.com>
X-Mailer: WebService/1.1.15620 hermes Apache-HttpAsyncClient/4.1.4 (Java/11.0.6)
Content-Length: 2358
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_083722_539895_A74BE743 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ruben10post[at]yahoo.de]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [77.238.179.147 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [77.238.179.147 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different

This is a multi-part message in MIME format.
--------------87403878C1759DB0B9998779
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all:

Please find attached a patch in order to avoid hard-coding IS_TTY in script scripts/feeds .

For related information, see here:

https://bugs.openwrt.org/index.php?do=details&task_id=2086

Best regards,
   rdiez

--------------87403878C1759DB0B9998779
Content-Type: text/x-patch; charset=UTF-8;
 name="DoNotHardCodeIsTty.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="DoNotHardCodeIsTty.patch"

From 768da7dc56e3bd267cfa2f0ea6e317816388a21b Mon Sep 17 00:00:00 2001
From: "R. Diez" <rdiezmail-openwrt@yahoo.com>
Date: Sun, 12 Apr 2020 17:33:28 +0200
Subject: [PATCH] Do not hard-code IS_TTY in script scripts/feeds

Signed-off-by: R. Diez <rdiezmail-openwrt@yahoo.com>
---
 scripts/feeds | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/scripts/feeds b/scripts/feeds
index 69ab602..56a690e 100755
--- a/scripts/feeds
+++ b/scripts/feeds
@@ -128,8 +128,11 @@ sub update_index($)
 	-d "./feeds/$name.tmp/info" or mkdir "./feeds/$name.tmp/info" or return 1;
 
 	system("$mk -s prepare-mk OPENWRT_BUILD= TMP_DIR=\"$ENV{TOPDIR}/feeds/$name.tmp\"");
-	system("$mk -s -f include/scan.mk IS_TTY=1 SCAN_TARGET=\"packageinfo\" SCAN_DIR=\"feeds/$name\" SCAN_NAME=\"package\" SCAN_DEPTH=5 SCAN_EXTRA=\"\" TMP_DIR=\"$ENV{TOPDIR}/feeds/$name.tmp\"");
-	system("$mk -s -f include/scan.mk IS_TTY=1 SCAN_TARGET=\"targetinfo\" SCAN_DIR=\"feeds/$name\" SCAN_NAME=\"target\" SCAN_DEPTH=5 SCAN_EXTRA=\"\" SCAN_MAKEOPTS=\"TARGET_BUILD=1\" TMP_DIR=\"$ENV{TOPDIR}/feeds/$name.tmp\"");
+
+	my $is_tty = -t STDOUT ? 1 : 0;
+	system("$mk -s -f include/scan.mk IS_TTY=$is_tty SCAN_TARGET=\"packageinfo\" SCAN_DIR=\"feeds/$name\" SCAN_NAME=\"package\" SCAN_DEPTH=5 SCAN_EXTRA=\"\" TMP_DIR=\"$ENV{TOPDIR}/feeds/$name.tmp\"");
+	system("$mk -s -f include/scan.mk IS_TTY=$is_tty SCAN_TARGET=\"targetinfo\" SCAN_DIR=\"feeds/$name\" SCAN_NAME=\"target\" SCAN_DEPTH=5 SCAN_EXTRA=\"\" SCAN_MAKEOPTS=\"TARGET_BUILD=1\" TMP_DIR=\"$ENV{TOPDIR}/feeds/$name.tmp\"");
+
 	system("ln -sf $name.tmp/.packageinfo ./feeds/$name.index");
 	system("ln -sf $name.tmp/.targetinfo ./feeds/$name.targetindex");
 
-- 
2.26.0


--------------87403878C1759DB0B9998779--


--===============1691314579446956946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1691314579446956946==--


Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 904711EE4D5
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 14:55:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:Date:References:To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RTXX7joZeHMeqkXKSmDpfwrPZ14s4qNXp19E3FwJf4g=; b=uR4Goso7l8kGKT8QyLhbk3hLf
	tGkZM8UAQnjqCYXqkCrCJL+WdnORyHnwcT+VnMsfpy6LM7pDmxLyTNSm1hsity3F1hI6ToLgd+LFZ
	dIjA8vIxrDYJ+AvwiVH4yiR/k8ATMAWU0fk+nHZSiOZoZ00o73iA7aFp+w5zatlp7dimwx3RQlVdv
	rWDpU8zKrI23U9nPEmPJcArzNyN5NJlUPJT2DZzZny8vsZQBM4QkdB2aoH8blHjJGhdjmahQ2I9aJ
	gLLu3RpOkBlGBCaYxO5i1yreVC82NYOKLCXTR8xrVjdxg1neb9KG9jmFjkSVtqXuyjazMsNDKQJVd
	nC2t74PfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgpPV-0002jq-P1; Thu, 04 Jun 2020 12:55:53 +0000
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <bc270db4-005d-36b9-c726-c044ef719624.ref@yahoo.com>
 <mailman.2840.1586705844.2542.openwrt-devel@lists.openwrt.org>
 <20200603094351.GB36571@meh.true.cz>
Date: Thu, 4 Jun 2020 14:55:30 +0200
In-Reply-To: <20200603094351.GB36571@meh.true.cz>
MIME-Version: 1.0
Message-ID: <mailman.20388.1591275346.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: "R. Diez via openwrt-devel" <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: "R. Diez" <rdiezmail-openwrt@yahoo.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH] Do not hard-code IS_TTY in script
 scripts/feeds
Content-Type: multipart/mixed; boundary="===============5106046204043389831=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============5106046204043389831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============5106046204043389831==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from sonic312-25.consmr.mail.ir2.yahoo.com ([77.238.178.96])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgpPK-0002dX-EQ
	for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 12:55:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1591275335; bh=/BU02J6lDsNoeldAZZKaWqQu5bF/CWIGtj+uv4tNe4g=; h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject; b=nMN3DAsb+igabCBNZW3307NeG3h2dyry1d1GmWLZbqOG+z369q2zC33AF7TLUwXPE/JDYf/UwXDKzDrSi/NnMAq3D45RkcS+eNNh5X7k141Lrj9fp6m1m1WdzsV+AYd2cTrGFfAUSy85ZX4Zd5wGOwrHla5sXtaMTGieTLqAxK0b4wu66HhPtMauTovAVdi4LCnhd/45/lShafBOLUebM++dwbNVsKKyeLHI98x7jNss0sDT0Oz7xOJhN2Qfb545TZifUgH8T2RnduE4SV0w5sG7B4qbNIwn5FLF0eFAwmPm+I1ZnoPrdvpVS3LNlifOAS1/yDlvp+ouVw+Oi2BIuA==
X-YMail-OSG: m4IwHBoVM1lryl9JGtMkQpjQWtqyUFU46BH9h7Llxa6brUkCX9xemxNXikiIm0E
 gW4k223fFsQDaAVAv6E2AfPjdw520Jn_z5HSI5hCTA8DqdbqIaNXtmlRJuUNHLevzTSnlTjOCiw6
 Hgzjl3CKXX7.oW.wKl3aJWzg8MgJUATxihvL6PYLytQ23yDDPR_wcyNdaa2w8yHnmGcoaXNGVVmG
 Jm5GDCcpjO73hIZtyo3AofksI55ZuW.jZS.Jsq6zBqqURWwuHMgDAM53fQxchPzDZrutGRWpe3wc
 yMVmPAKUDBqjn8iAqBDa8m8ouuYz_ejIgM7MOVgG7xGUQqrCZz_X39eieR11oDA29PC16O2olHXP
 qW3RiKcA3uam8q2OIRH2qbqXcL72Kjmyslf6AmZaOA1TSqHHX.OPO0OfGWrHxYpO9ojrQuVwtfkD
 qSotafKTXPRFNCpmCHQ5VwJbmUHCyaEZd2D9gwkQrlCQhDm6NiiUtOskCAwsnCG5XOnA8vMzWyE1
 jNpzqrdbphS5iBXvpn5jXXtaJooVFwvYq7V4kO8iykQqB0nZEMLO.7Zi0r8edhHGBHReNBaOyxC1
 UvX_GUO1lE3NM.SlALNmg9X8WawZBWCNlo3KQS3_KtMyW3XE08on6sK74YQ2buOo1Cw0E6h4bJ4k
 EsYaU1_xLjM_e5Q4RUlp8XwfloKjseSY4Fev4kEY8QYItEGKVhoVfIxvS3BBajDdWRyxdRupcQZR
 NtKWMCpOzpUOrWWRe.m2CVxlKqv2mvtwM28sV5mbIr3bexjtL.MC5qtHZvPOZF8xdhtt7NeP2gKv
 X0fMblNkQZoUzyeAJ6GwU.0bRTK5E4VsyL98YqfT6oc9Dl142oL._eaDCmBF9g3g75GkqLq64N.m
 6KirgZTSD1OJp2NZjCb5nRH36S0aqlZFlTSFjiP96wkwmRcW6f0IP5p0CmNOjVKpMOIU7QYmVSko
 DB4GVQldyk5Ja6rdqYY4gxOoI6nZvTaXBMqZg7kpJGVwDoemX3w_W.XWXQsEl3r3f..CWZFOGQhI
 JjNa8jucJBn1Ym1yBOQrnQLWP_E0qotzHyjQBMYx4QdwVJdJHo6y6Jkcf1TvJUz11hrr.ossd1Dp
 QwVuUGAok1OZd.HhNNJIPfOfV8ZOpYuyfcDjy2_2XhPi10.ctXzND_Rsk3YcIjrWmUg4g49eGwLU
 K_EBsw_DAiMpN.gtIHD6CszmWkI4UhFFQag7UBzqetvMijM6zHXc7Wg1dBcX88xGOXlbAR.8Hlsh
 tffYBxjdyKC7tNq2GLG2dQVZjeopFkgHEZyIibZn.Gid3VgUjXt8fC9FB2OBadJ6Ta.dsEUI_jXf
 iEtSlu3vRCCV4TR1uIMxdWOKv.YQHyNcq3hqrYpNZpH650nRPCn75AEk1gIA.7kfj6BL43jFpggz
 HfSHFp0N_IDgh.RQF27y3_.pPCkY3n5ockyHKcJ.RzN3KlFKxFnaeRHrFxU109VCoYSn69eNYeax
 wOL.6
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.ir2.yahoo.com with HTTP; Thu, 4 Jun 2020 12:55:35 +0000
Received: by smtp413.mail.ir2.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID 9cc3f597254a2b214032dbcd0338b47d;
          Thu, 04 Jun 2020 12:55:31 +0000 (UTC)
Subject: Re: [OpenWrt-Devel] [PATCH] Do not hard-code IS_TTY in script
 scripts/feeds
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
References: <bc270db4-005d-36b9-c726-c044ef719624.ref@yahoo.com>
 <mailman.2840.1586705844.2542.openwrt-devel@lists.openwrt.org>
 <20200603094351.GB36571@meh.true.cz>
From: "R. Diez" <rdiezmail-openwrt@yahoo.com>
Message-ID: <c014d3ee-ee3d-e6bb-7abe-ce6990212bba@yahoo.com>
Date: Thu, 4 Jun 2020 14:55:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200603094351.GB36571@meh.true.cz>
Content-Type: multipart/mixed;
 boundary="------------40DA37CD97D0789E8025B6C2"
Content-Language: en-GB
X-Mailer: WebService/1.1.16037 hermes_yahoo Apache-HttpAsyncClient/4.1.4 (Java/11.0.6)
Content-Length: 2734
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_055542_623891_E34332C7 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [77.238.178.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ruben10post[at]yahoo.de]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [77.238.178.96 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different

This is a multi-part message in MIME format.
--------------40DA37CD97D0789E8025B6C2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

> Hi, please resend it as a proper patch, for details see
> https://openwrt.org/submitting-patches, thanks!

I do not know what you did not like in the patch, so I am hoping it is just the formatting of the subject line and perhaps that some extra explanation 
is needed. Please find enclosed the new patch version.

This is actually a trivial patch, please feel free to modify it any way you want.

For related information, see here:

https://bugs.openwrt.org/index.php?do=details&task_id=2086

Best regards,
   rdiez

--------------40DA37CD97D0789E8025B6C2
Content-Type: text/x-patch; charset=UTF-8;
 name="DoNotHardCodeIsTty2.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="DoNotHardCodeIsTty2.patch"

From 97255c59aa83c4d9f1dc5527b9945985ba1d8dc5 Mon Sep 17 00:00:00 2001
From: "R. Diez" <rdiezmail-openwrt@yahoo.com>
Date: Thu, 4 Jun 2020 14:44:22 +0200
Subject: [PATCH] build: do not hard-code IS_TTY in script scripts/feeds

The script was previously assuming that stdin is always a TTY.

Signed-off-by: R. Diez <rdiezmail-openwrt@yahoo.com>
---
 scripts/feeds | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/scripts/feeds b/scripts/feeds
index 69ab60278a..56a690e4a7 100755
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
2.26.2


--------------40DA37CD97D0789E8025B6C2--


--===============5106046204043389831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5106046204043389831==--


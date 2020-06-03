Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC5A1ECEB6
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 13:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VyhnHL/KrtF9lBmxXtreOebtXhLuipyW3U4+GoubY2Y=; b=k88
	o8Le8GnBHQw12EEUREaIwqkIjuYzY7Pg8RxXRIB/FZoqgNyqE5VwDEP0fFjJyT7GRuYMxHrF+cMm6
	3bDzXFGmHF6LDGpzink7mqLaUGGJfNGIxf40S/W6mmM6NM482EdXj9y5y+EfBuZYxNV5fI9zArvBl
	NroB4jF2kY58gth9Jz/UNe91ZyxYXpHwajhYfjMoZCxbjhUNlAmYpSm+/S6N79l/nZeCDFanzLU4U
	gl6Z2Bgc0w6vyy63e0dy6BHcpeevsk/EPVTILR49U/SIz9nSk2ftVsdelIiREFyVBON1bNrfmSKNo
	Sjal3e2N41OK9n/AmV638XorjSokCiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgRnH-0005mv-Cy; Wed, 03 Jun 2020 11:42:51 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgRn9-0005mX-ER
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 11:42:44 +0000
Received: by mail-wr1-x442.google.com with SMTP id l10so1983901wrr.10
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jun 2020 04:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=melmac.net; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=vC1TJdR/Je3l8oqkLjZ1tf+VrrnXDVlP86tlFYi42jw=;
 b=eoVRwLlLXBCkVRBr1/GsRPGOhascwIkmhZwiFdPPymRfHMW9NveO48aJdfuk5umwEj
 EC7sx/xlSUiRZAUFZKlFpKQUxF9viopw8kTF00lrJH3B2vU6HwR9DPT2kfgO/v5tkVug
 eUgbgf+qeOZ/u5bCGFTYxzwdUBes4HTspMSDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=vC1TJdR/Je3l8oqkLjZ1tf+VrrnXDVlP86tlFYi42jw=;
 b=dtW1PcWV4ztDNlABYzaVAb+PGHBsGFNduLo9CCdV9PMKiXhHG7a1PSu0x8ChT1ULLt
 bVgV9fct9QvebAlbhx7+0QxzH00eGDkD1WiY96th1VhG0MecFNQVYKQsS6C0hBlCrMtz
 6LJN4UtJntxvfnPP1gLgT8Iw27zadomKHzFMCUKMDjrmysalwE1AcDWWt57ZeyYGCqDu
 radOQqwWCwv7F7h0JDW9wsxQBh0aZDH5LWlo256g8y2C/Ev40PhBu8VJegFDdzBiWWx1
 aJc0tmLSJEBt50/aKNf4DkCwCyMbolb4xtOwdr7Wi3VhB3y9/yrpUsbIIztMgm1I4NDF
 6rLA==
X-Gm-Message-State: AOAM532EUxf0CHEHMEGh0K3RQbkYI8PUn4zJ4m2tmYeUk2qtn/zIi00B
 rSYA10Ma0JDfYMElmnv4YyF+yPXN8jSsemmMulq6PmNZTNLJnoEy
X-Google-Smtp-Source: ABdhPJwpsuWSSGnAJdgh8b+7Oz0upzyweN84gLXXVBED38XgkVtkt38IYJekorksBzzy/f7ma07JdRtdcQl4/eKeQyE=
X-Received: by 2002:a5d:4245:: with SMTP id s5mr27526493wrr.6.1591184561062;
 Wed, 03 Jun 2020 04:42:41 -0700 (PDT)
MIME-Version: 1.0
From: Stan Grishin <stangri@melmac.net>
Date: Wed, 3 Jun 2020 04:42:30 -0700
Message-ID: <CALu2O0Rzyg+Kv7h=tX7Gg9s9shPAUtb46oLsYpD61OYZ=VYsLg@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_044243_487965_7C4F5FB4 
X-CRM114-Status: UNSURE (   6.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] base-files: add list-enabled/disabled to
 service function in /etc/profile
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Implement service list-enabled and service list-disabled to provide an easy way
for users to list enabled/disabled services from CLI.

Signed-off-by: Stan Grishin <stangri@melmac.net>
---
 package/base-files/files/etc/profile | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/package/base-files/files/etc/profile
b/package/base-files/files/etc/profile
index 0beff1608f..e8350cfd6a 100644
--- a/package/base-files/files/etc/profile
+++ b/package/base-files/files/etc/profile
@@ -38,3 +38,24 @@ in order to prevent unauthorized SSH logins.
 --------------------------------------------------
 EOF
 fi
+
+service() {
+        if [ "$1" = "list-enabled" ]; then
+                for F in /etc/init.d/* ; do
+                        $F enabled && echo "$F enabled"
+                done;
+        elif [ "$1" = "list-disabled" ]; then
+                for F in /etc/init.d/* ; do
+                        $F enabled || echo "$F disabled"
+                done;
+        elif [ -f "/etc/init.d/$1" ]; then
+                /etc/init.d/$@
+        else
+                echo "Usage: service
list-disabled|list-enabled|<service> [command]"
+                if [ -n "$1" ]; then
+                        echo "service "'"'"$1"'"'" not found, the
following services are available:"
+                        ls "/etc/init.d"
+                fi
+                return 1
+        fi
+}
-- 
2.25.1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

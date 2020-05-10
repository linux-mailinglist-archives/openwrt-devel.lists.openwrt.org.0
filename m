Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E311CCB9F
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 May 2020 16:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TqEeScZZr9G3BqB9bqZ5s18fcUQZlQu17nW7AtEq/MQ=; b=CO+/K5rVZQHxWk3eTO9SKgS1ft
	2rI+naVGnZIADxxCAmKV9747ZLnWqfizmG6Mvy0kcAekqLVYgTZ4fygClP36b42W0o5IsW7VxQ8VF
	3oJeIQBbSx3P8katA8KqXDfFIgK3qcwCdUpwcr8mz9dPb0ndN54+ZTFjFDidc6Ms2xivWTjY6/1Bz
	X+91p6I9IqlnCt1zezekq0T9MxX9ElSFD+eU59/UZBSZVR41hl0lLdE6lJVD/2WodoHsIMWqtRBsR
	+drBbWVyMfwdNy8pSMONW61mNkTruIqA2PGorSJyvrOgZuT2VRVu6TbXN79wX+KAfD8KySiuI0iC6
	0UQxiPPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXnGO-0006MN-Hq; Sun, 10 May 2020 14:49:08 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXnG5-0006CL-D1
 for openwrt-devel@lists.openwrt.org; Sun, 10 May 2020 14:48:51 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N3Kc6-1j8Bjd49K6-010Imh for <openwrt-devel@lists.openwrt.org>; Sun, 10
 May 2020 16:48:44 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 10 May 2020 16:47:53 +0200
Message-Id: <20200510144754.10751-9-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
References: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:BIqdmHvYc+pCNZ0OguPP2y0AX0kwUmgV43010H4HX0yJObdb9Wm
 ZbzibK09wxztHleqgT7hFM8k6lQnX6wDUjN8xwc0ohh+7pInxoKQwzzf39xW4ffc8Gu5JYL
 DVYie+ks5nu5xAPrJO2HQqdoWbEfDmr1OX/fB6Aq6L9JsOa8XVpE1uXmGWeK5IxiIIXBhVF
 1B6I75ZloFkC3lZp2Eo1g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Vu7/OHMU28Q=:HFnXUxPQwsGf8ceyoeZBp2
 KRjzqm6MWyWhpaCEPMhsduyWsGYS4OufEcnJjcOHFJgIFUH02EWHbHZrV13MWMQJyv8nZtwhU
 H1gdcbG5v39catsf+Yi1gg7qpy675NrcY4ba0pVsUTAV7DT4QN+AlsnVYxzbP6eePMkTQbs+I
 z79HBYOxb6sXG+4xpj3mu8E+1St+9fr0Mmjp25n/+0VEDzvTF1tvziIERRey8rnihpczgMzZO
 1vUuhp1thjUU5B6n84ML7BMDCAD4k+EeNkGSLJwZUsYt7hmivDRoWV2JWlzZuzdk22fSEmSHz
 Vl7SruVg8KEpq5pBB3kBKLBthCiOv3ziN1V7tgKjbR4/uPDKQuRl6sFYzK8a/WjcVbH60LwAN
 bvmXKL/8AZF0Ss0Ly0b1TYjn2PREFOWboyUuHT6uKndeVD1yS02NERRupczHzxcHSeJ+dqfqE
 p+HoFT7k3CfNLYvnu1tue7U3ghM/xABJ1QrNcNNMlkXwV6W8o1exaV42rhfyyWe5aaW5MaEv6
 /nyLI1j106/0TQvmZG1rb6P5NKPYr9SQ65AMSDLR42Op6FQDjLVMf3oRjF8wbZ6rpad9UC63V
 GiR75zLNNw49pIwRCsBCManveb2exNXJZ5sMPswbanu+cE0r2DM8DLFQaZMqkEC/RXPMTkvm4
 sBs9Q3rIMgswRJxXrWT4HniS20iFQI0522MfAh/ZpXFi2sj3a1yyXA5YiCyv3NTH1/gURZOeS
 iH6AfDBw17qUScxRNGWsTOhlTT9KDaJqIdKd2srm/aZubyLMR98cttP6F12acdDg+9e/VrSni
 THROR4BzWAa9OJGhoaAy6dLUHC5olNv9zYjAtJHa1F+JIUBdtIKNogLgnCCfwRd1KbpLPPF
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_074849_740814_A0E8DC61 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.126.134 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH 09/10] procd: replace backticks by $(...)
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

This replaces deprecated backticks by more versatile $(...) syntax.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/system/procd/files/procd.sh      | 4 ++--
 package/system/procd/files/reload_config | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/package/system/procd/files/procd.sh b/package/system/procd/files/procd.sh
index 25a9f049cb..b8605396e9 100644
--- a/package/system/procd/files/procd.sh
+++ b/package/system/procd/files/procd.sh
@@ -528,10 +528,10 @@ uci_validate_section()
 	local _result
 	local _error
 	shift; shift; shift
-	_result=`/sbin/validate_data "$_package" "$_type" "$_name" "$@" 2> /dev/null`
+	_result=$(/sbin/validate_data "$_package" "$_type" "$_name" "$@" 2> /dev/null)
 	_error=$?
 	eval "$_result"
-	[ "$_error" = "0" ] || `/sbin/validate_data "$_package" "$_type" "$_name" "$@" 1> /dev/null`
+	[ "$_error" = "0" ] || $(/sbin/validate_data "$_package" "$_type" "$_name" "$@" 1> /dev/null)
 	return $_error
 }
 
diff --git a/package/system/procd/files/reload_config b/package/system/procd/files/reload_config
index 8d1cdb1378..3ae0de96a3 100644
--- a/package/system/procd/files/reload_config
+++ b/package/system/procd/files/reload_config
@@ -7,7 +7,7 @@ for config in /etc/config/*; do
 done
 MD5FILE=/var/run/config.md5
 [ -f $MD5FILE ] && {
-	for c in `md5sum -c $MD5FILE 2>/dev/null| grep FAILED | cut -d: -f1`; do
+	for c in $(md5sum -c $MD5FILE 2>/dev/null| grep FAILED | cut -d: -f1); do
 		ubus call service event "{ \"type\": \"config.change\", \"data\": { \"package\": \"$(basename $c)\" }}"
 	done
 }
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
